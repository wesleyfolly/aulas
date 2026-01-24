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

# ESTRATÉGIA DE CAMINHOS RELATIVOS NATIVOS
# O script agora apenas copia os arquivos mantendo o conteúdo 100% fiel ao original.
# Os Wikilinks com caminhos relativos (ex: ![[../../Recursos/...]]) funcionam nativamente
# tanto no Obsidian quanto no Quartz através do plugin ObsidianFlavoredMarkdown.
# NÃO há necessidade de conversão de caminhos - isso estava corrompendo a sintaxe dos Wikilinks.
# 
# REMOVIDO: Conversão automática de caminhos usando sed (linhas 47-60)
# Motivo: O sed estava corrompendo a sintaxe dos Wikilinks (![[...]] virava !/...]])
# Solução: Usar caminhos relativos nativos que funcionam em ambos os ambientes

echo "Sincronização concluída com sucesso!"
