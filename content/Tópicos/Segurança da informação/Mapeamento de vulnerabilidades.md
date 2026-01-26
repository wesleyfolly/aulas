---
tipo: aula
resumo: "Técnicas e ferramentas para mapeamento de vulnerabilidades em sistemas e redes usando Nmap NSE."
tags:
  - aula
  - seguranca-da-informacao
  - vulnerabilidades
  - nmap
  - scanning
---

# Mapeamento de Vulnerabilidades

> [!quote] Encontrando as Fraquezas
> *É descobrir as vulnerabilidades (fraquezas) de um sistema ou rede. Essas fraquezas serão utilizadas mais tarde para um possível ataque bem-sucedido.*

---

## 📋 Conceitos Básicos

### Tipos de Mapeamento

O mapeamento de vulnerabilidades pode ser classificado de três formas:

> [!tip] Manual vs Automático

| Tipo | Descrição | Prós | Contras |
|------|-----------|------|---------|
| **Automático** | Utiliza softwares que verificam vulnerabilidades | Rápido, abrangente | Falsos positivos/negativos |
| **Manual** | Não usa ferramentas de scan, testa cada serviço | Mais preciso | Demorado, requer experiência |

Hackers experientes usam uma **combinação** das duas técnicas.

> [!tip] Rede Local vs Internet

| Tipo | Descrição |
|------|-----------|
| **Rede Local** | Mapear vulnerabilidades na rede onde você está conectado |
| **Internet** | Mapear alvos em outras redes (requer mais cuidado) |

> [!tip] Autenticado vs Não Autenticado

| Tipo | Descrição |
|------|-----------|
| **Autenticado** | Scanner configurado com credenciais válidas — análise mais profunda |
| **Não Autenticado** | Sem credenciais — mais rápido, menos resultados |

---

## 🛠️ Ferramentas

| Ferramenta | Uso |
|------------|-----|
| **Nmap** | Scanner de rede e vulnerabilidades |
| **Nikto** | Scanner de vulnerabilidades web |
| ~~Nessus~~ | Scanner comercial (não abordaremos) |

---

## 🔍 Análise de Vulnerabilidades com Nmap

> [!info] Nmap Scripting Engine (NSE)
> O Nmap possui uma poderosa funcionalidade que permite a utilização, criação e compartilhamento de **scripts** para análise automatizada de vulnerabilidades.

### Localização dos Scripts

```bash
/usr/share/nmap/scripts/
```

**Documentação:** [nmap.org/book/nse-usage.html](https://nmap.org/book/nse-usage.html)

### Categorias de Scripts

> [!warning] Cuidado com Scripts Intrusivos
> Os scripts são divididos em categorias. Focaremos em `vuln` e `exploit`, mas atenção à diferença entre `safe` e `intrusive`.

| Categoria | Descrição | Segurança |
|-----------|-----------|-----------|
| **safe** | Não afetam o alvo | ✅ Seguros |
| **intrusive** | Podem derrubar serviços | ⚠️ Usar apenas em labs |
| **vuln** | Detectam vulnerabilidades | ⚠️ Alguns são intrusivos |
| **exploit** | Tentam explorar falhas | ❌ Usar apenas em labs |

> [!danger] Atenção
> **NÃO EXECUTEM SCRIPTS DA CATEGORIA INTRUSIVE EM ALVOS REAIS, SOMENTE EM MÁQUINAS VIRTUAIS!**

Mesmo scripts da categoria `vuln` podem realizar atividades de `exploit` e prejudicar o alvo.

### Consultando Informações dos Scripts

O arquivo `script.db` contém informações sobre cada script:

```bash
# Ver primeiras linhas
head -n 5 /usr/share/nmap/scripts/script.db

# Filtrar por categoria
cat /usr/share/nmap/scripts/script.db | grep '"vuln"\|"exploit"'
```

### Executando Scripts de Vulnerabilidade

```bash
# Rodar todos os scripts de vulnerabilidade
nmap --script vuln 10.11.1.10

# Rodar script específico
nmap --script=smb-vuln-ms17-010 192.168.1.1

# Combinar com scan de serviços
nmap -sV --script vuln 192.168.1.1
```

---

## 🌐 Análise Manual de Aplicações Web

> [!tip] Buscas Manuais
> Além de ferramentas automatizadas, a análise manual revela detalhes importantes.

### Técnicas de Análise

| Técnica | O que Procurar |
|---------|---------------|
| **Código-fonte da página** | Comentários, links escondidos, JavaScript, framework |
| **Developer Tools - Debugger** | Scripts carregados, breakpoints |
| **Developer Tools - Network** | Requisições HTTP, headers, cookies |
| **Developer Tools - Console** | Erros JavaScript, mensagens de debug |

### Passos para Análise Manual

1. **View Source** — Analise comentários HTML e scripts inline
2. **Debugger/Sources** — Examine arquivos JavaScript carregados
3. **Network Tab** — Observe requisições e respostas
4. **Robots.txt** — Verifique diretórios ocultos
5. **Sitemap.xml** — Mapeie a estrutura do site

---

## 📊 Workflow de Mapeamento

```
1. Descoberta de Hosts
       ↓
2. Scan de Portas
       ↓
3. Detecção de Serviços
       ↓
4. Identificação de Versões
       ↓
5. Scan de Vulnerabilidades
       ↓
6. Validação Manual
       ↓
7. Documentação
```

---

## 🎯 Exemplos Práticos

### Scan Básico de Vulnerabilidades

```bash
# Scan completo com detecção de versões e vulnerabilidades
nmap -sV --script vuln 192.168.1.0/24
```

### Scan de Vulnerabilidade SMB

```bash
# Verificar EternalBlue
nmap -p445 --script smb-vuln-ms17-010 192.168.1.1
```

### Scan de Vulnerabilidades Web

```bash
# Usar Nikto para web
nikto -h http://192.168.1.1
```

