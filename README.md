# Aulas - Site Quartz

Site estático gerado com [Quartz](https://quartz.jzhao.xyz/) para publicar as aulas do IFF no GitHub Pages.

🌐 **Site publicado em:** https://wesleyfolly.github.io/aulas/

## 📋 Sobre o Projeto

Este projeto utiliza o Quartz para transformar notas Markdown do Obsidian em um site estático moderno e navegável. O conteúdo é sincronizado automaticamente da pasta `03 - IFF/Aulas` do vault Obsidian para este repositório.

### O que foi configurado:

- ✅ Quartz v4.5.2 instalado e configurado
- ✅ Configuração para português brasileiro (pt-BR)
- ✅ Navegação configurada (pasta "Recursos" oculta, mas arquivos acessíveis)
- ✅ Script de sincronização rsync para atualizar conteúdo
- ✅ GitHub Actions workflow para build e deploy automático
- ✅ GitHub Pages configurado para publicação automática

## 🚀 Como Usar

### ⚡ Processo Rápido: Sync, Build e Commit

Para atualizar o conteúdo das aulas, execute sempre nesta ordem:

1. **SYNC**: `./scripts/sync-content.sh` - Sincroniza conteúdo do Obsidian
2. **BUILD**: `docker compose run --rm quartz npm run quartz -- build` - Valida que não há erros
3. **COMMIT**: `git add content/ && git commit -m "..." && git push` - Publica as mudanças

Veja detalhes completos na seção [Atualizar Conteúdo das Aulas](#atualizar-conteúdo-das-aulas) abaixo.

### Docker (Recomendado)

O projeto usa Docker para garantir compatibilidade entre macOS e Linux (os `node_modules` contêm binários nativos específicos de cada plataforma).

```bash
# Build e servidor local (desenvolvimento)
cd /home/wesley/Dropbox/life-code/areas/profissional/aulas-quartz-github
docker compose up --build
# Acesse http://localhost:8080

# Apenas build (sem servidor)
docker compose run --rm quartz npm run quartz -- build

# Parar o servidor
docker compose down
```

### Primeira Configuração (já concluída)

O projeto já está configurado e publicado. Se precisar reconfigurar:

1. **Habilitar GitHub Pages:**
   - Acesse: https://github.com/wesleyfolly/aulas/settings/pages
   - Em "Source", selecione **GitHub Actions**
   - Salve as configurações

2. **Verificar o deploy:**
   - Acesse: https://github.com/wesleyfolly/aulas/actions
   - O workflow "Deploy Quartz site to GitHub Pages" será executado automaticamente

### Atualizar Conteúdo das Aulas {#atualizar-conteúdo-das-aulas}

Sempre que você atualizar as aulas no Obsidian, siga **obrigatoriamente** estes passos na ordem:

```bash
# 1. Navegar para o diretório do projeto
cd /home/wesley/Dropbox/life-code/areas/profissional/aulas-quartz-github

# 2. SYNC: Sincronizar conteúdo do Obsidian para content/
./scripts/sync-content.sh

# 3. BUILD: Fazer build do site para verificar se não há erros (via Docker)
docker compose run --rm quartz npm run quartz -- build

# 4. Verificar mudanças (opcional, mas recomendado)
git status

# 5. COMMIT: Adicionar, commitar e fazer push
git add content/
# Se houver mudanças em outros arquivos (ex: quartz.layout.ts), adicione também:
git add .
git commit -m "Atualizar conteúdo das aulas - [descrição das mudanças]"
git push
```

**⚠️ Importante:**
- O build local (passo 3) é **obrigatório** antes do commit para garantir que não há erros
- Se o build falhar, corrija os erros antes de fazer commit e push
- O GitHub Actions fará o build e deploy automaticamente após o push, mas é essencial validar localmente primeiro

### Testar Build Localmente

Para visualizar o site localmente antes de publicar (via Docker):

```bash
# Build e servir localmente (abre em http://localhost:8080)
docker compose up

# Ou com rebuild da imagem (após mudar Dockerfile ou dependências)
docker compose up --build

# Parar o servidor
docker compose down
```

## 📁 Estrutura do Projeto

```
aulas-quartz-github/
├── .github/
│   └── workflows/
│       └── deploy.yml          # Workflow GitHub Actions para deploy automático
├── content/                    # Conteúdo sincronizado do Obsidian (pasta Aulas)
│   ├── Tópicos/               # Visível na navegação
│   ├── Recursos/              # Oculto da navegação, mas arquivos acessíveis
│   └── index.md               # Página inicial
├── quartz/                     # Código fonte do Quartz (componentes, plugins, estilos)
├── scripts/
│   └── sync-content.sh        # Script rsync para sincronizar conteúdo
├── docker-compose.yml         # Configuração Docker para desenvolvimento
├── Dockerfile                 # Imagem Docker com Node.js e dependências
├── .dockerignore              # Arquivos ignorados no build Docker
├── quartz.config.ts           # Configuração principal do Quartz
├── quartz.layout.ts           # Configuração de layout e navegação
└── package.json               # Dependências do projeto
```

## ⚙️ Configurações Importantes

### Quartz Config (`quartz.config.ts`)

- **Título:** "Aulas"
- **Locale:** pt-BR (português brasileiro)
- **Base URL:** https://wesleyfolly.github.io/aulas
- **Navegação:** Pasta "Recursos" oculta do Explorer, mas arquivos acessíveis via links

### Script de Sincronização (`scripts/sync-content.sh`)

O script usa `rsync` para sincronização incremental:
- **Origem:** `/Users/wesleyfolly/Library/CloudStorage/Dropbox/obsidian vault/03 - IFF/Aulas/`
- **Destino:** `content/` (neste repositório)
- **Flags:** `-av --delete` (preserva permissões, timestamps, e remove arquivos deletados)

## 🔧 Comandos Úteis

### Processo Completo de Atualização

```bash
# Fluxo completo: Sync → Build → Commit
cd /home/wesley/Dropbox/life-code/areas/profissional/aulas-quartz-github
./scripts/sync-content.sh                                   # 1. Sync
docker compose run --rm quartz npm run quartz -- build      # 2. Build
git add content/                                            # 3. Commit
git add .                                                   # Outras mudanças se houver
git commit -m "Atualizar conteúdo das aulas - [descrição]"
git push                                                    # 4. Push
```

### Docker (Ambiente Recomendado)

```bash
# Build da imagem Docker
docker compose build

# Build e servir localmente
docker compose up

# Build e servir (forçando rebuild da imagem)
docker compose up --build

# Apenas build (sem servidor)
docker compose run --rm quartz npm run quartz -- build

# Parar containers
docker compose down

# Limpar tudo (containers, imagens, volumes)
docker compose down --rmi all -v
```

### Desenvolvimento Nativo (se os node_modules forem compatíveis)

```bash
# Instalar dependências
npm install

# Build do site
npm run quartz -- build

# Build e servir localmente
npm run quartz -- build --serve

# Verificar tipos TypeScript
npm run check

# Formatar código
npm run format
```

### Git

```bash
# Verificar status
git status

# Ver mudanças no content/
git diff content/

# Adicionar todas as mudanças
git add .

# Commit
git commit -m "Mensagem do commit"

# Push para GitHub
git push
```

### Sincronização

```bash
# Sincronizar conteúdo do Obsidian
./scripts/sync-content.sh

# Ou usando bash explicitamente
bash scripts/sync-content.sh
```

## 🐛 Troubleshooting

### Build falha localmente

```bash
# Se usando Docker, rebuild a imagem
docker compose down
docker compose build --no-cache
docker compose up

# Se usando ambiente nativo, limpar cache
rm -rf node_modules quartz/.quartz-cache
npm install
npm run quartz -- build
```

### Erro de binários incompatíveis (macOS vs Linux)

Isso acontece quando `node_modules` foi instalado em uma plataforma diferente. Use Docker:
```bash
docker compose up --build
```

### Deploy não funciona no GitHub Actions

1. Verifique se GitHub Pages está habilitado:
   - Settings > Pages > Source: **GitHub Actions**

2. Verifique as permissões do workflow:
   - O arquivo `.github/workflows/deploy.yml` deve ter as permissões corretas

3. Reexecute o workflow:
   - Actions > Selecione o workflow > Re-run jobs

### Conteúdo não sincroniza

Verifique se o caminho do vault está correto no script:
```bash
# Editar o script se necessário
nano scripts/sync-content.sh
```

## 📚 Recursos

- [Documentação do Quartz](https://quartz.jzhao.xyz/)
- [GitHub Pages Docs](https://docs.github.com/pages)
- [GitHub Actions Docs](https://docs.github.com/actions)

## 📝 Notas

- O repositório está configurado para ignorar no `.gitignore` do `life-code` (repositório pai)
- A pasta `content/` é commitada no repositório (não está no `.gitignore`)
- O workflow GitHub Actions executa automaticamente a cada push na branch `main`
- O site é publicado automaticamente após o build bem-sucedido

## 🔗 Links

- **Site publicado:** https://wesleyfolly.github.io/aulas/
- **Repositório:** https://github.com/wesleyfolly/aulas
- **Actions:** https://github.com/wesleyfolly/aulas/actions

---

## Instruções para Claude (Assistente AI)

Quando o usuário pedir alterações no layout do Quartz, siga estes passos:

### 1. Arquivos de Layout

Os principais arquivos para customização são:

- `quartz.config.ts` - Configuração geral (título, locale, plugins)
- `quartz.layout.ts` - Layout das páginas (sidebar, footer, componentes)
- `quartz/components/` - Componentes individuais do Quartz
- `quartz/styles/` - Estilos CSS/SCSS

### 2. Testar Alterações

Após fazer alterações, sempre teste via Docker:

```bash
cd /home/wesley/Dropbox/life-code/areas/profissional/aulas-quartz-github

# Iniciar servidor de desenvolvimento
docker compose up

# O servidor fica disponível em http://localhost:8080
# Mudanças em quartz/ são refletidas automaticamente (hot reload)
# Para parar: Ctrl+C ou docker compose down
```

### 3. Verificar Erros

Se o build falhar, os erros aparecerão no terminal. Corrija antes de fazer commit.

### 4. Workflow Completo

1. Fazer alterações no código
2. `docker compose up` - testar localmente
3. Verificar em http://localhost:8080
4. `docker compose down` - parar servidor
5. `git add . && git commit -m "..." && git push` - publicar

### 5. Estrutura do Quartz

```
quartz/
├── bootstrap-cli.mjs    # CLI principal
├── build.ts             # Script de build
├── components/          # Componentes React/Preact
│   ├── ArticleTitle.tsx
│   ├── Backlinks.tsx
│   ├── Explorer.tsx
│   ├── Footer.tsx
│   ├── Graph.tsx
│   ├── TableOfContents.tsx
│   └── ...
├── plugins/             # Plugins de transformação
├── styles/              # Estilos globais
│   ├── base.scss
│   └── custom.scss
└── util/                # Utilitários
```

---

**Última atualização:** Janeiro 2025
