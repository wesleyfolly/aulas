#!/bin/bash

# Script para sincronizar pasta Aulas do vault Obsidian para content/ do Quartz
# Usa rsync para sincronização incremental (só copia arquivos modificados)

# Verificar variáveis de ambiente necessárias
if [ -z "$OBSIDIAN_VAULT_PATH" ]; then
    echo "Erro: OBSIDIAN_VAULT_PATH não está definida"
    exit 1
fi

if [ -z "$LIFECODE_PATH" ]; then
    echo "Erro: LIFECODE_PATH não está definida"
    exit 1
fi

# Caminhos usando variáveis de ambiente
VAULT_AULAS="$OBSIDIAN_VAULT_PATH/03 - IFF/Aulas"
QUARTZ_CONTENT="$LIFECODE_PATH/areas/profissional/aulas-quartz-github/content"

# Verificar se a pasta origem existe
if [ ! -d "$VAULT_AULAS" ]; then
    echo "Erro: Pasta origem não encontrada: $VAULT_AULAS"
    exit 1
fi

# Criar pasta destino se não existir
mkdir -p "$QUARTZ_CONTENT"

# Sincronizar usando rsync
# Flags:
#   -a: Modo archive (preserva permissões, timestamps, etc.)
#   -v: Verbose (mostra o que está sendo sincronizado)
#   --delete: Remove arquivos no destino que não existem mais na origem
echo "Sincronizando $VAULT_AULAS -> $QUARTZ_CONTENT"
rsync -av --delete "$VAULT_AULAS/" "$QUARTZ_CONTENT/"

if [ $? -ne 0 ]; then
    echo "Erro durante a sincronização!"
    exit 1
fi

# Estrutura atual: Aulas/ contém Comece por aqui/, Logs de Aula/, Tópicos/, Recursos/
# Mantemos a hierarquia original - não movemos mais conteúdo de Tópicos/ para raiz
echo "Estrutura mantida: Comece por aqui, Logs de Aula, Tópicos, Recursos"

# CONVERSÃO DE CAMINHOS RELATIVOS PARA ABSOLUTOS NOS WIKILINKS
# O Obsidian funciona melhor com caminhos relativos (../../Recursos/...)
# Mas o Quartz precisa de caminhos absolutos com o subpath do baseUrl (/aulas/Recursos/...)
# para funcionar corretamente no GitHub Pages quando há um baseUrl configurado
# Este script converte APENAS os caminhos dentro de Wikilinks, preservando a sintaxe [[...]]
echo "Convertendo caminhos relativos para absolutos nos Wikilinks de imagens..."

# Detectar se estamos no macOS (sed -i '' requer sufixo vazio) ou Linux (sed -i requer sufixo)
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS - converter caminhos relativos dentro de Wikilinks para absolutos com subpath
    # Padrão: ![[../../Recursos/...]] -> ![[/aulas/Recursos/...]]
    # Padrão: ![[../Recursos/...]] -> ![[/aulas/Recursos/...]]
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i '' 's|!\[\[\.\.\/\.\.\/Recursos/|![[/aulas/Recursos/|g' {} \;
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i '' 's|!\[\[\.\.\/Recursos/|![[/aulas/Recursos/|g' {} \;
else
    # Linux
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i 's|!\[\[\.\.\/\.\.\/Recursos/|![[/aulas/Recursos/|g' {} \;
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i 's|!\[\[\.\.\/Recursos/|![[/aulas/Recursos/|g' {} \;
fi
echo "  ✓ Caminhos de imagens convertidos para absolutos com subpath nos Wikilinks"

echo "Sincronização concluída com sucesso!"
