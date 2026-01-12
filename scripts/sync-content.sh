#!/bin/bash

# Script para sincronizar pasta Aulas do vault Obsidian para content/ do Quartz
# Usa rsync para sincronização incremental (só copia arquivos modificados)

# Caminhos
VAULT_AULAS="/Users/wesleyfolly/Library/CloudStorage/Dropbox/obsidian vault/03 - IFF/Aulas"
QUARTZ_CONTENT="/Users/wesleyfolly/Library/CloudStorage/Dropbox/life-code/areas/profissional/aulas-quartz-github/content"

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

if [ $? -eq 0 ]; then
    echo "Sincronização concluída com sucesso!"
else
    echo "Erro durante a sincronização!"
    exit 1
fi
