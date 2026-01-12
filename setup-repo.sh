#!/bin/bash

# Script para configurar o repositório GitHub
# Uso: ./setup-repo.sh SEU_USERNAME

if [ -z "$1" ]; then
    echo "Erro: Informe seu username do GitHub"
    echo "Uso: ./setup-repo.sh SEU_USERNAME"
    exit 1
fi

USERNAME=$1

echo "Configurando repositório para: $USERNAME"

# Adicionar remote
git remote add origin https://github.com/$USERNAME/aulas.git

# Verificar remote
echo ""
echo "Remote configurado:"
git remote -v

echo ""
echo "Próximos passos:"
echo "1. git add ."
echo "2. git commit -m 'Configuração inicial do Quartz para publicar aulas'"
echo "3. git push -u origin main"
