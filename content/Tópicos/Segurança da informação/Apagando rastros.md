---
tipo: aula
resumo: "Técnicas utilizadas por atacantes para eliminar evidências de intrusão e dificultar investigações forenses."
tags:
  - aula
  - seguranca-da-informacao
  - pos-exploracao
  - anti-forense
  - covering-tracks
---

# Apagando Rastros

> [!quote] Cobrindo os Próprios Passos
> *Após uma invasão, atacantes buscam eliminar evidências para evitar detecção e investigação.*

---

## 🎯 O que é?

> [!warning] Fase do Pentest
> **Apagar rastros** (Covering Tracks) é a fase em que um atacante remove ou modifica evidências de sua presença no sistema comprometido.

### Por que Estudar?

| Perspectiva | Motivo |
|-------------|--------|
| **Red Team** | Entender para simular ataques realistas |
| **Blue Team** | Saber o que proteger e monitorar |
| **Forense** | Identificar técnicas de anti-forense |

---

## 🛠️ Técnicas Comuns

> [!info] Métodos de Ocultação

| Técnica | Descrição |
|---------|-----------|
| **Limpar logs** | Apagar ou modificar registros de eventos |
| **Modificar timestamps** | Alterar datas de acesso/modificação |
| **Ocultar arquivos** | Atributos hidden, alternate data streams |
| **Limpar histórico** | Bash history, browser history |
| **Remover ferramentas** | Deletar malware após uso |
| **Tunelamento** | Esconder tráfego em protocolos legítimos |

---

## 📋 Logs Importantes

> [!tip] O que Atacantes Tentam Apagar

### Linux

| Log | Localização | Conteúdo |
|-----|-------------|----------|
| **auth.log** | `/var/log/auth.log` | Autenticações |
| **syslog** | `/var/log/syslog` | Eventos do sistema |
| **wtmp** | `/var/log/wtmp` | Logins de usuários |
| **lastlog** | `/var/log/lastlog` | Último login |
| **bash_history** | `~/.bash_history` | Comandos executados |

### Windows

| Log | Descrição |
|-----|-----------|
| **Security.evtx** | Eventos de segurança |
| **System.evtx** | Eventos do sistema |
| **Application.evtx** | Eventos de aplicações |
| **PowerShell logs** | Comandos PowerShell |

---

## 🔒 Contramedidas

> [!success] Como se Defender

| Medida | Descrição |
|--------|-----------|
| **Log remoto** | Enviar logs para servidor centralizado (SIEM) |
| **Imutabilidade** | Logs write-once (WORM) |
| **Monitoramento** | Alertas para modificações de logs |
| **Backups** | Cópias de segurança dos logs |
| **Auditoria** | Registrar quem acessa os logs |

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Este conhecimento é para **defesa** e **red team autorizado**
> - Apagar rastros em sistemas não autorizados é **crime**
> - Em pentests, documentar tudo antes de limpar

