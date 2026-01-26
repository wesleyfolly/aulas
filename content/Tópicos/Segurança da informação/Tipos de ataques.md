---
tipo: aula
resumo: "Catálogo dos principais tipos de ataques cibernéticos, suas características e como funcionam."
tags:
  - aula
  - seguranca-da-informacao
  - ataques
---

# Tipos de Ataques

> [!quote] Conheça seu inimigo
> *Para defender sistemas, é essencial entender como os atacantes pensam e quais técnicas utilizam.*

---

## 🎣 Ataques de Engenharia Social

> [!warning] O Fator Humano
> Muitos ataques exploram pessoas, não tecnologia. O elo mais fraco geralmente é o usuário.

### Phishing
Enganar usuários através de e-mails, sites ou mensagens falsas para revelar informações pessoais, senhas ou dados bancários.

### Social Engineering
Manipulação psicológica para obter informações confidenciais. Pode envolver ligações telefônicas, presença física ou interações online.

### Typosquatting
Registro de domínios com erros de digitação comuns (ex: `gooogle.com`) para capturar usuários desatentos.

---

## 🔐 Ataques de Credenciais

> [!info] Quebrando Senhas
> Ataques focados em obter ou contornar mecanismos de autenticação.

### Força Bruta
Tentativas repetidas e sistemáticas de adivinhar credenciais, testando todas as combinações possíveis.

### Pass-the-Hash
Uso indevido de hashes de senha capturados para autenticação, sem precisar saber a senha original.

### Session Hijacking
Roubo e uso de tokens de sessão válidos para assumir a identidade de um usuário autenticado.

---

## 🌐 Ataques de Rede

> [!tip] Interceptação e Manipulação
> Ataques que exploram a comunicação entre sistemas.

### Man-in-the-Middle (MitM)
Interceptação de comunicações entre duas partes, permitindo espionagem ou modificação de dados em trânsito.

### Eavesdropping
Escuta passiva de comunicações privadas para coletar informações sensíveis.

### Spoofing
Falsificação de identidade, seja de endereços IP, MAC, e-mails ou outros identificadores.

### Pharming
Redirecionamento de tráfego legítimo para sites fraudulentos através de manipulação de DNS.

---

## 💻 Ataques a Aplicações

> [!warning] Vulnerabilidades de Software
> Exploração de falhas em aplicações web e sistemas.

### SQL Injection
Injeção de código SQL malicioso em campos de entrada para manipular bancos de dados.

### Cross-Site Scripting (XSS)
Injeção de scripts maliciosos em páginas web que serão executados no navegador de outros usuários.

### Zero Day
Exploração de vulnerabilidades desconhecidas pelos desenvolvedores, para as quais não existe correção disponível.

---

## 🦠 Ataques com Malware

> [!danger] Software Malicioso
> Programas criados para causar danos, roubar dados ou obter acesso não autorizado.

### Malware (Geral)
Categoria ampla que inclui vírus, worms, trojans, spyware e outros softwares maliciosos.

### Ransomware
Malware que criptografa arquivos da vítima e exige pagamento de resgate para liberá-los.

### Backdoor
Acesso oculto deixado em um sistema para permitir entrada futura sem autenticação normal.

---

## 🚫 Ataques de Negação de Serviço

> [!info] Indisponibilidade
> Ataques que visam tornar sistemas ou serviços inacessíveis.

### DoS (Denial of Service)
Sobrecarga de um sistema individual com requisições ou tráfego para torná-lo inacessível.

### DDoS (Distributed DoS)
Ataque DoS realizado a partir de múltiplas fontes simultaneamente, geralmente usando botnets.

---

## 📊 Resumo Visual

| Categoria | Exemplos | Alvo Principal |
|-----------|----------|----------------|
| Engenharia Social | Phishing, Pretexting | Pessoas |
| Credenciais | Força Bruta, Pass-the-Hash | Autenticação |
| Rede | MitM, Spoofing | Comunicação |
| Aplicação | SQLi, XSS | Software |
| Malware | Ransomware, Trojan | Sistemas |
| DoS/DDoS | Flood, Amplification | Disponibilidade |
