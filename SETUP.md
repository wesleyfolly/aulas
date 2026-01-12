# Guia de Configuração do Repositório GitHub

## Passo 1: Criar o Repositório no GitHub

1. Acesse https://github.com/new
2. Nome do repositório: `aulas`
3. Descrição: "Site Quartz para publicar aulas do IFF"
4. Visibilidade: **Público** (necessário para GitHub Pages gratuito)
5. **NÃO** inicialize com README, .gitignore ou licença (já temos tudo)
6. Clique em "Create repository"

## Passo 2: Configurar o Remote Local

Após criar o repositório, execute os seguintes comandos no terminal:

```bash
cd /Users/wesleyfolly/Library/CloudStorage/Dropbox/life-code/areas/profissional/aulas-quartz-github

# Remover o remote do repositório original do Quartz
git remote remove origin

# Adicionar o novo remote (substitua SEU_USUARIO pelo seu username do GitHub)
git remote add origin https://github.com/SEU_USUARIO/aulas.git

# Renomear branch de v4 para main (padrão do GitHub)
git branch -M main

# Verificar o remote
git remote -v
```

## Passo 3: Fazer o Primeiro Commit e Push

```bash
# Adicionar todos os arquivos
git add .

# Fazer commit inicial
git commit -m "Configuração inicial do Quartz para publicar aulas"

# Fazer push para o repositório
git push -u origin main
```

## Passo 4: Habilitar GitHub Pages

1. No GitHub, vá em **Settings** > **Pages**
2. Em **Source**, selecione **GitHub Actions**
3. O workflow já está configurado e será executado automaticamente

## Passo 5: Verificar o Deploy

1. Vá na aba **Actions** do repositório
2. Aguarde o workflow "Deploy Quartz site to GitHub Pages" completar
3. Seu site estará disponível em: `https://SEU_USUARIO.github.io/aulas/`

## Próximos Passos

Após o primeiro deploy funcionar:

1. **Sincronizar conteúdo**: Sempre que atualizar as aulas no Obsidian, execute:
   ```bash
   ./scripts/sync-content.sh
   git add content/
   git commit -m "Atualizar conteúdo das aulas"
   git push
   ```

2. **Testar build local** (opcional):
   ```bash
   npx quartz build
   npx quartz build --serve  # Para visualizar localmente
   ```
