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

### Primeira Configuração (já concluída)

O projeto já está configurado e publicado. Se precisar reconfigurar:

1. **Habilitar GitHub Pages:**
   - Acesse: https://github.com/wesleyfolly/aulas/settings/pages
   - Em "Source", selecione **GitHub Actions**
   - Salve as configurações

2. **Verificar o deploy:**
   - Acesse: https://github.com/wesleyfolly/aulas/actions
   - O workflow "Deploy Quartz site to GitHub Pages" será executado automaticamente

### Atualizar Conteúdo das Aulas

Sempre que você atualizar as aulas no Obsidian, siga estes passos:

```bash
# 1. Navegar para o diretório do projeto
cd /Users/wesleyfolly/Library/CloudStorage/Dropbox/life-code/areas/profissional/aulas-quartz-github

# 2. Sincronizar conteúdo do Obsidian para content/
./scripts/sync-content.sh

# 3. Verificar mudanças (opcional)
git status

# 4. Adicionar, commitar e fazer push
git add content/
git commit -m "Atualizar conteúdo das aulas"
git push
```

O GitHub Actions fará o build e deploy automaticamente após o push.

### Testar Build Localmente

Para visualizar o site localmente antes de publicar:

```bash
# Build do site
npx quartz build

# Servir localmente (abre em http://localhost:8080)
npx quartz build --serve
```

## 📁 Estrutura do Projeto

```
aulas-quartz-github/
├── .github/
│   └── workflows/
│       └── deploy.yml          # Workflow GitHub Actions para deploy automático
├── content/                   # Conteúdo sincronizado do Obsidian (pasta Aulas)
│   ├── Tópicos/              # Visível na navegação
│   ├── Recursos/             # Oculto da navegação, mas arquivos acessíveis
│   └── index.md              # Página inicial
├── scripts/
│   └── sync-content.sh       # Script rsync para sincronizar conteúdo
├── quartz.config.ts          # Configuração principal do Quartz
├── quartz.layout.ts          # Configuração de layout e navegação
└── package.json             # Dependências do projeto
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

### Desenvolvimento

```bash
# Instalar dependências
npm install

# Build do site
npx quartz build

# Build e servir localmente
npx quartz build --serve

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
# Limpar cache e reinstalar
rm -rf node_modules .quartz-cache
npm install
npx quartz build
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

**Última atualização:** Janeiro 2025
