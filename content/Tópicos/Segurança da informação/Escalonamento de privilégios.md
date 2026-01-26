---
tipo: aula
resumo: "Técnicas para elevar privilégios de um usuário comum para administrador/root após obter acesso inicial."
tags:
  - aula
  - seguranca-da-informacao
  - pos-exploracao
  - privilege-escalation
  - pentest
---

# Escalonamento de Privilégios

> [!quote] De Usuário a Administrador
> *Privilege escalation é a arte de transformar acesso limitado em controle total do sistema.*

---

## 🎯 O que é?

> [!success] Definição
> **Escalonamento de privilégios** (Privilege Escalation) é o processo de obter níveis mais altos de permissão do que o inicialmente concedido.

### Tipos

| Tipo | Descrição |
|------|-----------|
| **Vertical** | Usuário comum → Administrador/root |
| **Horizontal** | Usuário A → Usuário B (mesmo nível) |

---

## 🐧 Linux Privilege Escalation

> [!tip] Técnicas Comuns

### Verificações Iniciais

```bash
# Informações do usuário
id
whoami

# Sudo permissions
sudo -l

# Kernel version (para exploits)
uname -a

# Arquivos SUID
find / -perm -4000 2>/dev/null

# Capabilities
getcap -r / 2>/dev/null

# Cron jobs
cat /etc/crontab
ls -la /etc/cron*
```

### Vetores Comuns

| Vetor | Descrição |
|-------|-----------|
| **SUID binaries** | Binários que executam como root |
| **Sudo misconfig** | Permissões sudo mal configuradas |
| **Kernel exploits** | Vulnerabilidades no kernel |
| **Cron jobs** | Tarefas agendadas mal protegidas |
| **PATH hijacking** | Manipulação de variáveis de ambiente |
| **Capabilities** | Linux capabilities exploráveis |
| **Senhas em arquivos** | Credenciais em texto plano |

### Ferramentas de Enumeração

| Ferramenta | Descrição |
|------------|-----------|
| **LinPEAS** | Script de enumeração completo |
| **LinEnum** | Enumeração de privilégios |
| **linux-exploit-suggester** | Sugere exploits de kernel |
| **pspy** | Monitor de processos sem root |

---

## 🪟 Windows Privilege Escalation

> [!info] Técnicas Comuns

### Verificações Iniciais

```cmd
# Informações do usuário
whoami /all
net user %username%

# Informações do sistema
systeminfo

# Serviços
sc query state= all
wmic service list

# Processos
tasklist /v
```

### Vetores Comuns

| Vetor | Descrição |
|-------|-----------|
| **Unquoted Service Paths** | Caminhos de serviço sem aspas |
| **Service Permissions** | Serviços modificáveis |
| **AlwaysInstallElevated** | MSI instala como SYSTEM |
| **Token Impersonation** | Roubo de tokens |
| **DLL Hijacking** | Substituição de DLLs |
| **Kernel Exploits** | Vulnerabilidades no kernel |
| **Credenciais salvas** | Senhas em arquivos/registry |

### Ferramentas de Enumeração

| Ferramenta | Descrição |
|------------|-----------|
| **WinPEAS** | Script de enumeração completo |
| **PowerUp** | PowerShell para privesc |
| **Seatbelt** | Coleta de informações de segurança |
| **windows-exploit-suggester** | Sugere exploits |

---

## 📚 Recursos de Aprendizado

> [!success] Plataformas para Prática

| Recurso | Descrição |
|---------|-----------|
| **GTFOBins** | Binários Linux exploráveis |
| **LOLBAS** | Binários Windows exploráveis |
| **HackTricks** | Guia completo de técnicas |
| **TryHackMe** | Rooms de privilege escalation |
| **HackTheBox** | Máquinas para prática |

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Use apenas em **ambientes autorizados**
> - Documente todas as técnicas utilizadas
> - Reporte vulnerabilidades de forma responsável

