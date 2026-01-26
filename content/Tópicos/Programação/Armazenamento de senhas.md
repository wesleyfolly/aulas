---
tipo: aula
resumo: "Técnica simples para armazenar credenciais em arquivo separado em Python, evitando expor senhas no código principal."
tags:
  - aula
  - programacao
  - python
  - seguranca
  - boas-praticas
---

# Armazenamento de Senhas

> [!quote] Boas Práticas de Segurança
> *Nunca exponha senhas diretamente no código-fonte. Use arquivos separados ou variáveis de ambiente.*

---

## 🔐 Técnica: Arquivo Separado

> [!warning] Atenção
> Esta é uma técnica básica para aprendizado. Em produção, use variáveis de ambiente ou gerenciadores de secrets.

### Passo 1: Criar arquivo de credenciais

Crie um arquivo separado, por exemplo `passwesley.py`:

```python
login = 'teste@gmail.com'
senha = '1234'
```

---

### Passo 2: Importar no código principal

```python
import passwesley
```

---

### Passo 3: Usar as variáveis

```python
print(passwesley.senha)
```

---

## 🛡️ Recomendações Avançadas

> [!tip] Para Projetos Reais

| Método | Descrição |
|--------|-----------|
| **Variáveis de Ambiente** | `os.environ.get('SENHA')` |
| **.env + python-dotenv** | Arquivo `.env` com `load_dotenv()` |
| **Gerenciadores de Secrets** | AWS Secrets Manager, HashiCorp Vault |
| **Keyring** | Biblioteca `keyring` para armazenamento seguro |

> [!danger] Nunca faça
> - Commitar senhas no Git
> - Hardcode de credenciais no código
> - Compartilhar arquivos de senha

