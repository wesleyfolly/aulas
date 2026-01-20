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

# Reorganizar estrutura: mover tópicos de Tópicos/ para o nível raiz
# Isso faz com que os tópicos apareçam diretamente no primeiro nível no GitHub Pages
if [ -d "$QUARTZ_CONTENT/Tópicos" ]; then
    echo "Reorganizando estrutura: movendo tópicos para o primeiro nível..."
    cd "$QUARTZ_CONTENT"
    
    # Mover cada pasta de Tópicos/ para o nível raiz
    for dir in Tópicos/*/; do
        if [ -d "$dir" ]; then
            dirname=$(basename "$dir")
            # Só mover se não existir no destino (evitar conflitos)
            if [ ! -d "$dirname" ]; then
                mv "$dir" "$dirname"
                echo "  ✓ Movido: $dirname"
            fi
        fi
    done
    
    # Remover pasta Tópicos se estiver vazia
    if [ -d "Tópicos" ] && [ -z "$(ls -A Tópicos 2>/dev/null)" ]; then
        rmdir "Tópicos"
        echo "  ✓ Pasta Tópicos removida (vazia)"
    elif [ -d "Tópicos" ]; then
        echo "  ⚠ Pasta Tópicos ainda contém arquivos, mantendo..."
    fi
fi

# Corrigir caminhos de imagens para Quartz (converter relativos para absolutos)
# No Quartz, caminhos relativos como ../../Recursos/ não funcionam, precisa ser /Recursos/
# Detectar se estamos no macOS (sed -i '' requer sufixo vazio) ou Linux (sed -i requer sufixo)
echo "Corrigindo caminhos de imagens para Quartz..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i '' 's|../../Recursos/|/Recursos/|g' {} \;
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i '' 's|../Recursos/|/Recursos/|g' {} \;
else
    # Linux
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i 's|../../Recursos/|/Recursos/|g' {} \;
    find "$QUARTZ_CONTENT" -name "*.md" -type f -exec sed -i 's|../Recursos/|/Recursos/|g' {} \;
fi
echo "  ✓ Caminhos de imagens corrigidos"

echo "Sincronização concluída com sucesso!"
