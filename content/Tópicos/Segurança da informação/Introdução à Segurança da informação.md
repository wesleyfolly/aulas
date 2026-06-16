---
tipo: aula
resumo: "Aula completa de introdução à Segurança da Informação: tríade CID, princípios estendidos, ativos, ameaças, vulnerabilidades, risco, panorama de ameaças, defesa em profundidade, frameworks (ISO 27001, NIST CSF 2.0, LGPD) e resposta a incidentes, com atividades práticas em cada conceito."
tags:
  - aula
  - seguranca-da-informacao
  - fundamentos
  - triade-cid
---

# Introdução à Segurança da Informação

![[Recursos/Segurança da informação/Introdução à Segurança da informação/hero-seguranca-informacao.png]]

## 🌍 O mundo sob ataque — agora, ao vivo

> [!danger] Enquanto você lê esta frase, o planeta está sob ataque
> Não é força de expressão: **milhares de ataques cibernéticos** disparam pelo mundo **a cada segundo**. E dá pra assistir acontecendo, em tempo real.

**🗺️ Mapa de ataques em tempo real** — veja com seus próprios olhos (cada disparo é um ataque acontecendo **agora**):

<iframe src="https://www.digitalattackmap.com/" width="100%" height="460" loading="lazy" title="Mapa de ataques DDoS em tempo real (Digital Attack Map)" style="border:1px solid var(--lightgray);border-radius:8px;"></iframe>

> [!tip] Abra um destes em tela cheia e observe por 30 segundos
> Escolha um disparo e tente responder: **de onde** sai? **para onde** vai? que **tipo** de ataque é?
>
> | Mapa ao vivo | O que mostra |
> |--------------|--------------|
> | 🌍 **[Kaspersky Cyberthreat Map](https://cybermap.kaspersky.com/)** | O clássico: um **globo 3D** girando com infecções em tempo real |
> | 💥 **[Digital Attack Map](https://www.digitalattackmap.com/)** | Ataques de **DDoS** pelo mundo (Google Jigsaw + Arbor) |
> | 🔥 **[Fortinet Threat Map](https://threatmap.fortiguard.com/)** | Fluxo de ataques entre países, ao vivo |
> | 🛡️ **[Check Point ThreatMap](https://threatmap.checkpoint.com/)** | Ataques e os países mais visados hoje |
> | 🦠 **[Bitdefender Threat Map](https://threatmap.bitdefender.com/)** | Globo de infecções e spam em tempo real |
> | 📡 **[Radware Live Threat Map](https://livethreatmap.radware.com/)** | Ataques por tipo e região |

**🎬 Parece ficção científica — mas aconteceu de verdade:**

```mermaid
timeline
    title Ataques reais que mudaram a história
    2010 : Stuxnet destrói centrífugas nucleares no Irã
    2015 : Hackers controlam um Jeep em movimento pela internet (freios e direção)
    2016 : Mirai usa câmeras domésticas e derruba Twitter, Netflix e Spotify
    2017 : WannaCry paralisa hospitais e fábricas no mundo todo em horas
    2021 : Colonial Pipeline para e causa falta de combustível nos EUA
```

> [!warning] 🇧🇷 E não é só "lá fora" — é com você
> Em janeiro de **2021**, um vazamento expôs dados de **mais de 223 milhões de brasileiros** (CPF, nome, salário, foto) — mais do que a população viva do país. O **seu** CPF provavelmente está num vazamento **agora mesmo** — você confere isso na **Atividade 1**, logo abaixo. É exatamente por isso que a **LGPD** existe e por que esta disciplina é sobre **você**, não só sobre "as empresas".

---

> [!quote] Sobre esta aula
> *Esta é a base de toda a disciplina. Aqui construímos o vocabulário e os princípios que vamos usar o semestre inteiro: o que é segurança, o que protegemos, contra o quê, e como. Cada conceito vem com uma **atividade prática** — segurança se aprende fazendo.*

> [!abstract] O que você vai dominar nesta aula
> - O que é Segurança da Informação (e o que **não** é)
> - A **Tríade CID** (Confidencialidade, Integridade, Disponibilidade) e os princípios estendidos
> - O quarteto **Ativo → Ameaça → Vulnerabilidade → Risco**
> - O **panorama atual de ameaças** (2025-2026)
> - **Defesa em profundidade** e tipos de controle
> - Os **frameworks e normas** que organizam a área (ISO 27001, NIST CSF 2.0, LGPD)
> - O ciclo de **resposta a incidentes**

---

## 🎯 Por que isso importa agora?

> [!danger] A informação virou o ativo mais valioso (e mais atacado) do mundo
> Não é exagero acadêmico. É o cenário real de 2025-2026.

| Indicador (2025) | Número | O que significa |
|------------------|--------|-----------------|
| **Phishing como vetor inicial** | ~60% das invasões | A maioria dos ataques começa enganando uma **pessoa**, não quebrando uma máquina |
| **Phishing turbinado por IA generativa** | +1.265% | E-mails de golpe ficaram convincentes e em escala industrial |
| **Taxa de sucesso do phishing com IA** | ~60% | Quase 4× mais eficaz que o phishing tradicional |
| **Ransomware no pós-invasão** | 83,5% dos códigos maliciosos | Sequestro de dados domina o crime digital |
| **Custo médio de um ataque de ransomware** | > US$ 1,18 milhão | Impacto financeiro direto e brutal |
| **Setor público como alvo** | 38,2% dos incidentes | Institutos, prefeituras e escolas estão na linha de frente |

> [!info] E no Brasil? A LGPD entrou na conta
> A **Lei Geral de Proteção de Dados (Lei 13.709/2018)** tornou a segurança da informação uma **obrigação legal**. Vazar dados pessoais pode gerar multa de até **2% do faturamento** (limitada a R$ 50 milhões por infração), além do dano à reputação. Segurança deixou de ser "problema de TI" e virou **problema de gestão e de lei**.

> [!example] 🧪 Atividade 1 — Termômetro de exposição
> 1. Acesse **[Have I Been Pwned](https://haveibeenpwned.com/)** e digite seu e-mail. Anote **em quantos vazamentos** ele apareceu e **quais dados** (senha, telefone, etc.) foram expostos em cada um.
> 2. Em **[Pwned Passwords](https://haveibeenpwned.com/Passwords)**, teste uma senha que você **já usou** (nunca a atual!). Quantas vezes ela já apareceu em vazamentos?
> 3. Clique em **"Notify me"** e cadastre o e-mail para ser avisado automaticamente de **futuros** vazamentos.

> [!note] Fontes dos dados
> [ENISA Threat Landscape 2025](https://www.enisa.europa.eu/topics/cyber-threats/threats-and-trends) · [CrowdStrike 2025 Ransomware Report](https://www.crowdstrike.com/en-us/press-releases/ransomware-report-ai-attacks-outpacing-defenses/) · [WEF Global Cybersecurity Outlook 2025](https://reports.weforum.org/docs/WEF_Global_Cybersecurity_Outlook_2025.pdf)

---

## 🧩 O que é Segurança da Informação?

> [!info] Definição
> **Segurança da Informação** é o conjunto de **práticas, processos e tecnologias** que protegem a informação contra acesso, alteração, destruição ou indisponibilidade **não autorizados** — em qualquer forma que ela exista (digital, impressa, falada).

Um erro comum é achar que segurança é só firewall e antivírus. Na verdade, ela se apoia em **três dimensões** que precisam andar juntas:

```mermaid
flowchart LR
    SI{{"Segurança da Informação"}}
    SI --- P["👤 Pessoas<br/>conscientização, cultura, treino"]
    SI --- PR["⚙️ Processos<br/>políticas, normas, procedimentos"]
    SI --- T["💻 Tecnologia<br/>firewall, criptografia, antivírus"]
```

> [!tip] A informação tem um ciclo de vida — e cada etapa precisa de proteção
> A informação não fica parada. Ela nasce, é guardada, trafega, é usada e um dia é descartada.

```mermaid
flowchart LR
    A([Criação]) --> B([Armazenamento])
    B --> C([Transmissão])
    C --> D([Uso / Processamento])
    D --> E([Descarte])
```

E em qualquer instante ela está em **um de três estados**, cada um com ameaças típicas:

| Estado | Onde está | Ameaça típica | Proteção típica |
|--------|-----------|---------------|-----------------|
| **Em repouso** | Disco, banco de dados, backup | Roubo de dispositivo, acesso ao banco | Criptografia de disco |
| **Em trânsito** | Rede, Wi-Fi, internet | Interceptação (sniffing), MITM | TLS/HTTPS, VPN |
| **Em uso** | Memória RAM, tela | Malware, "ombro espião" (shoulder surfing) | Controle de acesso, tela bloqueada |

> [!example] 🧪 Atividade 2 — Caçando o dado nos 3 estados (DevTools)
> Abra um site qualquer (ex.: o portal do IFF) e aperte **F12** para abrir as Ferramentas de Desenvolvedor:
> 1. **Em trânsito:** aba **Network** → recarregue (F5) → clique numa requisição e confirme em *Headers* que a URL é **`https://`** (cifrado).
> 2. **Em repouso:** aba **Application** (ou *Armazenamento*) → **Cookies** e **Local Storage**. Que dados o site **guardou na sua máquina**?
> 3. Dê um print de cada estado e responda: qual desses dados vazaria se roubassem seu notebook **desbloqueado**?

---

## 🔐 A Tríade CID — os três pilares

> [!quote] A base de tudo
> *Toda a segurança da informação se apoia em três pilares conhecidos como **Tríade CID**: **C**onfidencialidade, **I**ntegridade e **D**isponibilidade. Em inglês: **CIA Triad** (Confidentiality, Integrity, Availability).*

![[Recursos/Segurança da informação/Introdução à Segurança da informação/principios-da-seguranca-da-informacao.png|A Tríade CID]]

```mermaid
flowchart TD
    CID{{"Tríade CID"}}
    CID --- C["🔒 Confidencialidade<br/>Quem pode ver?"]
    CID --- I["✅ Integridade<br/>Os dados estão corretos?"]
    CID --- D["📡 Disponibilidade<br/>Está acessível quando preciso?"]
```

> [!info] A regra de ouro
> Um sistema só é **seguro** quando os **três** pilares são respeitados ao mesmo tempo. Quebrou um, houve incidente de segurança.

---

### 🔒 Confidencialidade

> [!tip] Protegendo o acesso
> Garante que a informação **só seja acessada por quem tem autorização**. É o oposto de "vazamento".

**Como se garante:**
- Criptografia de dados sensíveis (em repouso e em trânsito)
- Controle de acesso (senha, biometria, MFA)
- Classificação da informação: *público, interno, confidencial, secreto*
- Princípio do **menor privilégio** (cada um vê só o que precisa)

**Ameaças à confidencialidade:** interceptação de comunicações · acesso não autorizado · engenharia social · "ombro espião".

> [!example] 🧪 Atividade 3 — Cifre um segredo de verdade
> 1. Acesse **[devglan AES](https://www.devglan.com/online-tools/aes-encryption-decryption)**, escreva uma mensagem secreta, defina uma **senha (chave)** e clique em **Encrypt**.
> 2. Copie o texto cifrado e mande para um colega **sem** a senha — ele consegue ler? Agora passe a chave e peça para ele **decifrar**.
> 3. **No terminal (bônus):** `echo "senha do meu wifi" | openssl enc -aes-256-cbc -a -pbkdf2`. Depois decifre com a flag `-d`. Erre a senha de propósito: o que acontece?

---

### ✅ Integridade

> [!success] Garantindo que o dado não foi adulterado
> Garante que a informação **não foi alterada** de forma indevida — seja por ataque, erro ou falha. O dado que chega é **idêntico** ao que saiu.

> [!info] Hashes: a "impressão digital" do arquivo
> Uma **função hash** (ex.: SHA-256) transforma qualquer arquivo em um código de tamanho fixo. Mudou **1 bit** do arquivo, o hash muda **completamente**. É assim que se verifica integridade na prática.

[🔧 Ferramenta: SHA-256 File Checksum (online)](https://emn178.github.io/online-tools/sha256_checksum.html)

**Onde aparece:** verificar se um download corrompeu · garantir que logs não foram alterados · assinaturas digitais · blockchain.

**Ameaças à integridade:** modificação não autorizada de dados · injeção de código malicioso · corrupção de arquivos · ataques *man-in-the-middle*.

> [!example] 🧪 Atividade 4 — Veja o hash mudar e valide um download
> 1. Crie um arquivo de texto com a frase `Seguranca da informacao` e gere o **SHA-256** dele — no site **[SHA-256 Checksum](https://emn178.github.io/online-tools/sha256_checksum.html)** ou no terminal: `sha256sum arquivo.txt` (Linux/Mac) · `Get-FileHash arquivo.txt` (PowerShell).
> 2. Troque **uma única letra** e gere de novo. Quantos caracteres do hash mudaram?
> 3. **Na vida real:** vá à página de download de uma distro Linux (ex.: **[Ubuntu](https://ubuntu.com/download/desktop)**) que publica o hash oficial e **compare** com o hash do arquivo. Bateu? Por que isso garante que ninguém adulterou o instalador?

---

### 📡 Disponibilidade

> [!warning] Acesso quando se precisa
> Garante que a informação e os sistemas estejam **disponíveis sempre que requisitados** por quem tem direito. De nada adianta um dado secreto e íntegro se ninguém consegue acessá-lo na hora da necessidade.

**Como se garante:**
- Redundância de sistemas (servidores em paralelo)
- Backups regulares e testados
- Plano de recuperação de desastres (DRP)
- Proteção contra DDoS

**Ameaças à disponibilidade:** ataques de negação de serviço (DoS/DDoS) · falhas de hardware · desastres naturais · **ransomware** (sequestra e torna o dado indisponível).

> [!example] 🧪 Atividade 5 — Testar disponibilidade e fazer um backup real
> 1. **Veja se um serviço está no ar** de vários lugares do mundo: acesse **[check-host.net](https://check-host.net/)**, cole uma URL e compare os tempos de resposta por país.
> 2. **Faça um backup e restaure:** no terminal, `tar -czf backup.tar.gz suapasta/` (ou copie a pasta para um pendrive/nuvem). Apague um arquivo da pasta original e **restaure-o** do backup. Funcionou?
> 3. Compare `ping -c 4 8.8.8.8` com `ping -c 4 site-que-nao-existe-123.abc`. Como o terminal mostra "disponível" vs "indisponível"?

---

### 📊 CID em uma tabela

| Pilar | Pergunta-chave | Garante que... | Ameaça principal | Defesa típica |
|-------|----------------|----------------|------------------|---------------|
| **Confidencialidade** | Quem pode ver? | só autorizados acessam | Vazamento de dados | Criptografia, MFA |
| **Integridade** | O dado está correto? | nada foi adulterado | Modificação indevida | Hash, assinatura digital |
| **Disponibilidade** | Está acessível? | está no ar quando preciso | Indisponibilidade (DDoS) | Backup, redundância |

> [!tip] O equilíbrio é uma decisão de engenharia
> Os três pilares **competem** entre si. Reforçar um pode enfraquecer outro:
> - **+ Confidencialidade** (mais controles, mais senhas) → **− Disponibilidade** (mais lento, mais atrito)
> - **+ Disponibilidade** (acesso fácil, sem barreiras) → **− Confidencialidade** (mais exposto)
>
> Segurança é, no fundo, a arte de **balancear** esses três pilares de acordo com o valor do que se protege.

> [!example] 🧪 Atividade 6 — Meça o custo da segurança
> Sinta na prática o trade-off entre **confidencialidade** e **usabilidade/disponibilidade**:
> 1. Ative a **verificação em duas etapas (2FA)** numa conta real sua (e-mail, Instagram), usando o app **Google Authenticator** ou **Authy**.
> 2. **Cronometre** o login antes e depois. Quantos segundos a mais a segurança custou?
> 3. Conclua: esse atrito compensa? Para a conta do seu banco, a resposta muda?

---

## ➕ Além da CID: princípios estendidos

A tríade CID é o núcleo, mas a segurança moderna trabalha com princípios **complementares**, formalizados em normas como a ISO/IEC 27000:

| Princípio | O que garante | Exemplo |
|-----------|----------------|---------|
| **Autenticidade** | A informação vem de uma **fonte verificável** e é genuína | Assinatura digital prova quem escreveu o e-mail |
| **Não-repúdio** (irretratabilidade) | Quem fez uma ação **não pode negar** que a fez | Log assinado prova que o usuário X aprovou a transação |
| **Legalidade / Conformidade** | A informação é tratada **conforme a lei** (LGPD, ISO) | Coletar dados só com base legal e consentimento |
| **Posse / Controle** | Controle sobre **onde o dado está** (mesmo cifrado) | Pendrive perdido = perda de posse, mesmo sem leitura |
| **Utilidade** | O dado está em formato **utilizável** | Backup cifrado sem a chave = inútil |

> [!info] Da tríade CID ao "Hexágono de Parker"
> Confidencialidade + Integridade + Disponibilidade + **Posse + Autenticidade + Utilidade** formam o **Parkerian Hexad**, uma extensão usada quando a CID "não dá conta" de explicar certos incidentes.

> [!abstract] AAA — o tripé do controle de acesso
> Na prática, controle de acesso se organiza em três perguntas (em inglês, **AAA**):

```mermaid
flowchart LR
    U[👤 Usuário] --> A1["Autenticação<br/>Quem é você?"]
    A1 --> A2["Autorização<br/>O que você pode fazer?"]
    A2 --> A3["Auditoria<br/>O que você fez?"]
```

> [!example] 🧪 Atividade 7 — Verifique autenticidade na prática
> 1. **Certificado (autenticidade da conexão):** abra o site do seu banco, clique no **cadeado** ao lado da URL → *Certificado / Conexão segura*. **Quem emitiu** o certificado? Para qual domínio vale? Até quando?
> 2. **Assinatura digital (autenticidade + não-repúdio):** vá ao **[Validador de Assinaturas do gov.br](https://validar.iti.gov.br/)** e suba um PDF assinado digitalmente. Veja o sistema **provar quem assinou** e que o arquivo **não foi alterado** depois.

---

## 🧠 O quarteto fundamental: Ativo, Ameaça, Vulnerabilidade e Risco

> [!info] O vocabulário que organiza a área toda
> Antes de defender, é preciso nomear. Estes quatro conceitos aparecem em **toda** a segurança da informação.

| Conceito | Definição | Exemplo |
|----------|-----------|---------|
| **Ativo** (*asset*) | Algo de **valor** que se quer proteger | Banco de dados de alunos, servidor, reputação |
| **Ameaça** (*threat*) | **Evento ou agente** que pode causar dano | Hacker, malware, incêndio, funcionário descuidado |
| **Vulnerabilidade** (*vulnerability*) | **Fraqueza** que a ameaça pode explorar | Senha fraca, software desatualizado, falta de backup |
| **Risco** (*risk*) | **Probabilidade × impacto** de a ameaça explorar a vulnerabilidade | "Alta chance de ransomware criptografar tudo" |
| **Controle** (*control*) | **Medida** que reduz o risco | Antivírus, backup, treinamento, firewall |

A relação entre eles é o coração da **gestão de risco**:

```mermaid
flowchart LR
    AM["⚠️ Ameaça"] -->|explora| VU["🕳️ Vulnerabilidade"]
    VU -->|expõe| AT["💎 Ativo"]
    AM -->|gera| RI["🎲 Risco"]
    RI -->|incide sobre| AT
    CO["🛡️ Controle"] -->|reduz| RI
    CO -->|corrige| VU
```

> [!tip] A "equação" do risco
> O risco não é um número exato, mas pensar nele como uma fórmula ajuda a priorizar:

$$\text{Risco} = \text{Probabilidade} \times \text{Impacto}$$

Por isso priorizamos riscos numa **matriz**: tratamos primeiro o que é **provável E grave**.

```mermaid
quadrantChart
    title Matriz de Risco
    x-axis Baixa probabilidade --> Alta probabilidade
    y-axis Baixo impacto --> Alto impacto
    quadrant-1 Critico tratar ja
    quadrant-2 Alto planejar
    quadrant-3 Baixo monitorar
    quadrant-4 Medio mitigar
    Ransomware: [0.72, 0.92]
    Phishing: [0.85, 0.6]
    Falha de HD: [0.35, 0.7]
    Spam: [0.65, 0.18]
```

> [!example] 🧪 Atividade 8 — Cace uma vulnerabilidade real (CVE)
> 1. Escolha um software que você usa (navegador, sistema, um app) e descubra a **versão** exata dele.
> 2. Pesquise essa versão em **[CVE Details](https://www.cvedetails.com/)** ou na **[base NVD do NIST](https://nvd.nist.gov/vuln/search)**. Ela tem **vulnerabilidades conhecidas (CVE)**? Qual a mais grave (nota **CVSS**)?
> 3. Monte a mini-análise: **Ativo** = o software · **Vulnerabilidade** = a CVE achada · **Controle** = a correção (em geral, *atualizar*). Onde esse risco cai na **matriz** acima?

---

## ⚔️ Panorama de Ameaças

![[Recursos/Segurança da informação/Introdução à Segurança da informação/engenharia-social-phishing.png|Exemplo real e clássico de phishing: e-mail do falso "TrustedBank". Repare nos erros de escrita e no link suspeito.]]

> [!danger] O ataque mais comum não é técnico — é psicológico
> A **engenharia social** manipula pessoas para que entreguem acesso ou informação. O **phishing** é sua forma mais comum, e hoje é gerado em escala por IA.

```mermaid
mindmap
  root((Ameaças))
    Malware
      Vírus
      Worm
      Trojan
      Ransomware
      Spyware
    Engenharia Social
      Phishing
      Spear phishing
      Pretexting
      Baiting
    Ataques de Rede
      DoS e DDoS
      Man-in-the-Middle
      Sniffing
    Aplicacao Web
      SQL Injection
      XSS
      Zero-day
    Ameaca Interna
      Insider mal-intencionado
      Erro ou descuido
```

| Categoria | Ameaça | Como funciona (resumo) |
|-----------|--------|------------------------|
| **Malware** | Ransomware | Cifra os dados da vítima e exige resgate |
| | Trojan | Programa "útil" que esconde código malicioso |
| | Spyware | Espiona e rouba informações silenciosamente |
| **Engenharia social** | Phishing | E-mail/mensagem falsos induzem a clicar ou entregar senha |
| | Spear phishing | Phishing **personalizado** para um alvo específico |
| **Rede** | DDoS | Sobrecarrega o serviço até ele cair (ataca disponibilidade) |
| | MITM | Atacante se põe "no meio" da comunicação e a intercepta |
| **Aplicação** | SQL Injection | Injeta comandos no banco via campos de um site |
| | Zero-day | Explora falha **ainda desconhecida** pelo fabricante |
| **Interna** | Insider | Pessoa de dentro abusa do acesso que já tem |

> [!example] 🧪 Atividade 9 — Detecte o phishing
> 1. **No exemplo "TrustedBank" acima**, ache **3 sinais** de fraude (dica: erros de escrita como *"recieved"* e *"discrepency"*, link genérico, urgência).
> 2. **Jogue o [Quiz de Phishing do Google](https://phishingquiz.withgoogle.com/)** — acertou quantos dos 8 e-mails?
> 3. Pegue um link suspeito (de um SMS/e-mail de golpe) e **escaneie-o em [VirusTotal](https://www.virustotal.com/gui/home/url)** — quantos antivírus o marcam como malicioso? *(Cole a URL no VirusTotal; **não clique** no link.)*

---

## 🛡️ Mecanismos de Defesa

![[Recursos/Segurança da informação/Introdução à Segurança da informação/defesa-em-profundidade.png|Modelo "onion" da defesa em profundidade: os dados no centro, protegidos por camadas (aplicação → host → rede)]]

> [!info] Defesa em Profundidade (*Defense in Depth*)
> Nenhuma proteção é perfeita. Por isso usamos **várias camadas** independentes: se uma falha, a próxima ainda segura o ataque. É o princípio do castelo medieval — fosso, muralha, portão, torre.

```mermaid
flowchart TD
    L1["👤 Camada Humana — conscientização e treino"] --> L2
    L2["🚪 Camada Física — acesso ao prédio, salas, racks"] --> L3
    L3["🌐 Camada de Rede — firewall, IDS/IPS, VPN"] --> L4
    L4["💻 Camada de Host — antivírus, patches, hardening"] --> L5
    L5["📦 Camada de Aplicação — validação, WAF, code review"] --> L6
    L6["🔐 Camada de Dados — criptografia, backup, acesso"]
```

Os controles de segurança se classificam de **duas formas** ao mesmo tempo:

| Por **natureza** | Exemplos | | Por **função** | Exemplos |
|------------------|----------|---|----------------|----------|
| **Físico** | Catraca, cadeado, CFTV | | **Preventivo** | Firewall, criptografia, treino |
| **Lógico/Técnico** | Firewall, antivírus, MFA | | **Detectivo** | IDS, log, alarme, antivírus |
| **Administrativo** | Política, norma, treinamento | | **Corretivo** | Backup, plano de recuperação |

> [!example] 🧪 Atividade 10 — Audite as camadas de defesa
> 1. **Camada de rede/aplicação:** teste um site real em **[securityheaders.com](https://securityheaders.com/)** e no **[Mozilla Observatory](https://developer.mozilla.org/en-US/observatory)**. Que **nota** ele tirou? Quais cabeçalhos de proteção faltam?
> 2. **Camada de host (sua máquina):** verifique se o **firewall** está ligado — Linux: `sudo ufw status` · Windows (PowerShell): `Get-NetFirewallProfile | Select Name,Enabled` · Mac: *Ajustes → Rede → Firewall*. Está ativo?

---

## 📐 Frameworks e Normas

> [!info] Você não precisa reinventar a roda
> A comunidade já organizou as boas práticas em **frameworks e normas**. Conhecê-los é o que separa o amador do profissional.

### NIST Cybersecurity Framework 2.0 (2024)

![[Recursos/Segurança da informação/Introdução à Segurança da informação/nist-csf-2.0-funcoes.png|As 6 funções do NIST CSF 2.0]]

> [!tip] As 6 funções (a versão 2.0 adicionou a "Govern")
> Publicado pelo NIST (EUA) em **fevereiro de 2024**, organiza a segurança em **seis funções** contínuas. A grande novidade da 2.0 é a função **Governar (Govern)** no centro — segurança virou responsabilidade da **alta gestão**, não só da TI.

| Função | O que cobre |
|--------|-------------|
| 🟡 **Govern (Governar)** | Estratégia, papéis, políticas e risco de fornecedores *(nova na 2.0)* |
| 🔵 **Identify (Identificar)** | Conhecer ativos, riscos e o ambiente |
| 🟣 **Protect (Proteger)** | Controles de acesso, criptografia, treino |
| 🟠 **Detect (Detectar)** | Monitorar e perceber incidentes |
| 🔴 **Respond (Responder)** | Conter e tratar o incidente |
| 🟢 **Recover (Recuperar)** | Restaurar operação e aprender |

### Outras normas essenciais

| Norma / Lei | Origem | Para que serve |
|-------------|--------|----------------|
| **ISO/IEC 27001:2022** | Internacional | Requisitos de um **SGSI** (Sistema de Gestão de Segurança da Informação) — base para **certificação** |
| **ISO/IEC 27002:2022** | Internacional | **Catálogo de controles** práticos para implementar o 27001 |
| **CIS Controls v8** | EUA (CIS) | Lista priorizada e prática de **18 controles** essenciais |
| **LGPD (Lei 13.709/2018)** | 🇧🇷 Brasil | Obriga a proteção de **dados pessoais** — apoia-se na CID |

> [!info] ISO 27001 e LGPD andam juntas
> Quem implementa os controles da **ISO 27001** já atende boa parte das exigências da **LGPD**. Confidencialidade, integridade e disponibilidade são, ao mesmo tempo, princípios técnicos e **deveres legais**.

> [!example] 🧪 Atividade 11 — Faça um checkup e mapeie no NIST
> 1. Rode o **[Google Security Checkup](https://myaccount.google.com/security-checkup)** (ou o equivalente Apple/Microsoft da sua conta). Ele revisa dispositivos, logins e permissões.
> 2. **Mapeie** o que ele mostrou para uma **função do NIST CSF 2.0**: ver dispositivos conectados → *Identify*; ativar 2FA → *Protect*; alerta de login estranho → *Detect*.
> 3. **Corrija pelo menos uma** recomendação que ele apontar — isso é *Respond/Recover* na prática.

---

## 🔄 Resposta a Incidentes

> [!warning] A pergunta não é "se", é "quando"
> Nenhuma organização é 100% segura. Por isso existe um processo estruturado para **quando o ataque acontece** — baseado no NIST SP 800-61.

```mermaid
flowchart LR
    P["1️⃣ Preparação"] --> D["2️⃣ Detecção e Análise"]
    D --> C["3️⃣ Contenção"]
    C --> E["4️⃣ Erradicação"]
    E --> R["5️⃣ Recuperação"]
    R --> L["6️⃣ Lições Aprendidas"]
    L -.realimenta.-> P
```

> [!example] 🧪 Atividade 12 — Execute a contenção
> A primeira reação técnica a um host infectado é **isolá-lo da rede**. Pratique:
> 1. Descubra como **cortar a rede da sua máquina em 1 segundo** e teste: Linux → `nmcli networking off` (religa com `on`) · Windows → modo avião ou `Disable-NetAdapter -Name "*"` · ou simplesmente tire o cabo / desligue o Wi-Fi.
> 2. Com a rede cortada, rode `ping 8.8.8.8`. Falhou? Pronto: você **conteve** o incidente (o malware não fala mais com o atacante nem se espalha).
> 3. Religue a rede e descreva qual seria a **próxima fase** (erradicação) nesse cenário.

---

## 🧪 Laboratório — coloque a mão na massa

> [!success] Atividades práticas consolidadas
> Faça pelo menos **três** destas. Todas usam ferramentas gratuitas e legais.

| # | Prática | Ferramenta | Pilar/conceito |
|---|---------|------------|----------------|
| L1 | Verificar se seu e-mail vazou | [Have I Been Pwned](https://haveibeenpwned.com/) | Confidencialidade |
| L2 | Gerar e comparar hashes de um arquivo | [SHA-256 Checksum](https://emn178.github.io/online-tools/sha256_checksum.html) | Integridade |
| L3 | Testar a força de uma senha | [security.org/password-checker](https://www.security.org/how-secure-is-my-password/) | Autenticação |
| L4 | Analisar um e-mail de phishing real | [PhishTank](https://phishtank.org/) | Engenharia social |
| L5 | Ver dados de um site (cabeçalhos de segurança) | [Security Headers](https://securityheaders.com/) | Defesa/Aplicação |

> [!tip] Desafio para antes da próxima aula
> Instale um **gerenciador de senhas** gratuito (ex.: **[Bitwarden](https://bitwarden.com/)**) e migre **pelo menos uma** conta para uma senha forte e única gerada por ele. Quantos caracteres tem a nova senha? Traga um print do gerador (sem mostrar a senha real!).

---

## ❓ Quiz de Fixação

> [!question] Teste seu entendimento
> 1. Um hospital teve seus prontuários **criptografados por ransomware** e não consegue mais acessá-los. **Qual pilar da CID** foi violado? *(E qual continua intacto?)*
> 2. Qual a diferença entre **ameaça** e **vulnerabilidade**? Dê um exemplo de cada.
> 3. Por que aumentar a **confidencialidade** pode reduzir a **disponibilidade**? Dê um exemplo.
> 4. O que a função **Govern**, nova no NIST CSF 2.0, mudou na forma de pensar segurança?
> 5. Um **hash** serve para garantir qual pilar? Por quê?
> 6. Cite **dois controles** para cada uma das três naturezas: físico, lógico e administrativo.
> 7. Por que se diz que o **ser humano** é o elo mais fraco da segurança? Como a **defesa em profundidade** ajuda mesmo quando uma pessoa erra?

---

## 📚 Para Aprofundar

> [!abstract] Materiais atuais e confiáveis (gratuitos)
> - 📖 **[Cartilha de Segurança para Internet — CERT.br](https://cartilha.cert.br/)** — referência brasileira, didática e atualizada
> - 🛡️ **[OWASP Top 10](https://owasp.org/www-project-top-ten/)** — os riscos mais críticos em aplicações web
> - 🏛️ **[NIST Cybersecurity Framework 2.0](https://www.nist.gov/cyberframework)** — o framework completo, na fonte
> - 🇧🇷 **[LGPD — texto oficial da lei](http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm)**
> - 🎓 **[ENISA Threat Landscape](https://www.enisa.europa.eu/topics/cyber-threats/threats-and-trends)** — panorama anual de ameaças (Europa)

> [!note] Continue na disciplina
> Esta base é aplicada e aprofundada no projeto-âncora da disciplina: [[Projeto GovSec]]. Os trabalhos e laboratórios estão em [[Trabalhos e Projetos de Segurança da Informação]].

> [!note] Créditos das imagens
> Roda do **NIST CSF 2.0** e exemplo de phishing **"TrustedBank"**: NIST / Wikimedia Commons (domínio público). Modelo *onion* de **defesa em profundidade** e **imagem de abertura**: Wikimedia Commons. Uso educacional em instituição pública de ensino.

> [!quote] Fecho
> *Segurança da informação não é um produto que se compra, é um **processo** que se mantém. Você acabou de montar o vocabulário e os princípios. A partir daqui, cada técnica que aprendermos vai se encaixar nesse mapa.*
