---
tipo: referencia
resumo: "Lista de protocolos e serviços que podem ser enumerados em um pentest, mas não são cobertos na disciplina."
tags:
  - referencia
  - seguranca-da-informacao
  - enumeracao
  - avancado
---

# Outras Enumerações

> [!quote] Conteúdo Avançado
> *Protocolos e serviços que podem ser enumerados em pentests mais aprofundados.*

---

> [!warning] Nota
> Este conteúdo é **apenas para referência**. Não é necessário estudar para a disciplina, mas pode ser útil para estudos futuros ou certificações.

---

## 📋 Protocolos para Enumeração Avançada

| Protocolo | Porta | Descrição |
|-----------|-------|-----------|
| **SMB** | 445/139 | Server Message Block: Compartilhamento de arquivos Windows |
| **NFS** | 2049 | Network File System: Compartilhamento de arquivos Unix |
| **SMTP** | 25/587 | Simple Mail Transfer Protocol: Servidores de email |
| **SNMP** | 161/162 | Simple Network Management Protocol: Gerenciamento de redes |

---

## 🔐 Certificados

> [!info] Análise de Certificados SSL/TLS
> A enumeração de certificados pode revelar:
> - Subdomínios (via Subject Alternative Name)
> - Informações da organização
> - Validade e configurações de segurança

---

## 📚 Para Saber Mais

> [!tip] Recursos de Estudo

| Recurso | Descrição |
|---------|-----------|
| **HackTricks** | Guias detalhados para cada protocolo |
| **OWASP** | Metodologias de teste |
| **TryHackMe** | Rooms específicas para cada serviço |
| **HackTheBox** | Máquinas com foco em enumeração |

