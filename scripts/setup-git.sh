#!/bin/bash

# Script para configurar o git remote do repositório aulas
# Uso: ./scripts/setup-git.sh SEU_USUARIO_GITHUB

if [ -z "$1" ]; then
    echo "Erro: Informe seu username do GitHub"
    echo "Uso: ./scripts/setup-git.sh SEU_USUARIO_GITHUB"
    exit 1
fi

GITHUB_USER="$1"
REPO_DIR="/Users/wesleyfolly/Library/CloudStorage/Dropbox/life-code/areas/profissional/aulas-quartz-github"

cd "$REPO_DIR" || exit 1

echo "Configurando repositório git..."

# Remover remote do Quartz original (se existir)
if git remote | grep -q "^origin$"; then
    echo "Removendo remote 'origin' existente..."
    git remote remove origin
fi

# Adicionar novo remote
echo "Adicionando remote: https://github.com/$GITHUB_USER/aulas.git"
git remote add origin "https://github.com/$GITHUB_USER/aulas.git"

# Renomear branch para main
echo "Renomeando branch para 'main'..."
git branch -M main

# Verificar configuração
echo ""
echo "Configuração concluída! Remote configurado:"
git remote -v

echo ""
echo "Próximos passos:"
echo "1. git add ."
echo "2. git commit -m 'Configuração inicial do Quartz para publicar aulas'"
echo "3. git push -u origin main"
