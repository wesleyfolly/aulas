---
tipo: aula
resumo: "Os três pilares fundamentais da segurança da informação: Confidencialidade, Integridade e Disponibilidade (CID)."
tags:
  - aula
  - seguranca-da-informacao
  - fundamentos
  - triade-cid
---

# Princípios da Segurança da Informação

> [!quote] A Base de Tudo
> *Toda a segurança da informação se baseia em três pilares fundamentais conhecidos como a Tríade CID.*

---

## 🔐 A Tríade CID

![[Recursos/Segurança da informação/Introdução à Segurança da informação/principios-da-seguranca-da-informacao.png|Tríade CID]]

> [!info] Os Três Pilares
> **C**onfidencialidade, **I**ntegridade e **D**isponibilidade são os princípios fundamentais que guiam todas as práticas de segurança.

---

## 🔒 Confidencialidade

> [!tip] Protegendo o Acesso
> A confidencialidade se refere à proteção de informações que **não devem ser acessadas** por indivíduos não autorizados.

### Exemplos

- Criptografia de dados sensíveis
- Controle de acesso por senha
- Classificação de informações (público, interno, confidencial, secreto)

### Ameaças à Confidencialidade

- Interceptação de comunicações
- Acesso não autorizado a sistemas
- Engenharia social

---

## ✅ Integridade

> [!success] Garantindo a Precisão
> A integridade está relacionada à **plenitude do armazenamento** dos dados. Da mesma forma que as informações são fornecidas, elas devem ser armazenadas, **sem qualquer alteração** em seu conteúdo.

### Verificação de Integridade

> [!info] Hashes
> Hashes são bastante utilizados para verificar a integridade de arquivos.

[🔧 SHA256 File Checksum](https://emn178.github.io/online-tools/sha256_checksum.html)

### Exemplos de Uso

- Verificar se um download foi corrompido
- Garantir que logs não foram alterados
- Assinaturas digitais em documentos

### Ameaças à Integridade

- Modificação não autorizada de dados
- Injeção de código malicioso
- Corrupção de arquivos

---

## 📡 Disponibilidade

> [!warning] Acesso Quando Necessário
> A disponibilidade diz respeito ao **acesso aos dados sempre que necessário**. Significa, literalmente, a garantia de que as informações estarão disponíveis quando requisitadas.

### Garantindo Disponibilidade

- Redundância de sistemas
- Backups regulares
- Planos de recuperação de desastres
- Proteção contra DDoS

### Ameaças à Disponibilidade

- Ataques de negação de serviço (DoS/DDoS)
- Falhas de hardware
- Desastres naturais
- Ransomware

---

## 📊 Resumo Visual

| Princípio | Pergunta-chave | Ameaça Principal |
|-----------|----------------|------------------|
| **Confidencialidade** | Quem pode ver? | Vazamento de dados |
| **Integridade** | Os dados estão corretos? | Modificação não autorizada |
| **Disponibilidade** | O sistema está acessível? | Indisponibilidade |

---

## 🎯 Aplicação Prática

> [!tip] Balanceando os Pilares
> Em muitos casos, é necessário encontrar um equilíbrio entre os três pilares. Por exemplo:

- **Alta confidencialidade** pode reduzir a disponibilidade (mais controles = mais lentidão)
- **Alta disponibilidade** pode comprometer a confidencialidade (acesso mais fácil)
- Sistemas críticos precisam de **alta integridade** mesmo com custo de performance

