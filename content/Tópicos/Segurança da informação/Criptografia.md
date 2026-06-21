---
tipo: aula
resumo: "Fundamentos de criptografia: simétrica, assimétrica, hash, assinaturas digitais e certificados. Ângulo ofensivo (quebra/ataque) e defensivo, com comandos reais de pentest."
tags:
  - aula
  - seguranca-da-informacao
  - criptografia
  - hash
  - certificados
  - pentest
  - hashcat
  - pos-quantica
---

# Criptografia

> [!quote] A Arte de Esconder Informações
> *A criptografia é um mecanismo de segurança que transforma informações legíveis em dados ilegíveis para pessoas não autorizadas.*

Para realizar essas transformações, utiliza-se algoritmos predefinidos e uma **chave secreta** que codifica a mensagem e depois a decodifica no destino.

![[Recursos/Segurança da informação/Criptografia/criptografia.png|Processo de criptografia]]

[📺 Criptografia | Nerdologia Tech](https://www.youtube.com/watch?v=_Eeg1LxVWa8)

> [!warning] ⚖️ Aviso Legal Obrigatório
> Todos os ataques e técnicas de quebra de criptografia mostrados nesta aula devem ser praticados **exclusivamente em ambientes de laboratório controlados**, em dados próprios ou com autorização formal por escrito. A quebra ou interceptação não autorizada de comunicações e sistemas é crime previsto no **art. 154-A do Código Penal** (invasão de dispositivo informático), com pena de reclusão de 1 a 4 anos e multa. Em contexto de CTF (Capture The Flag), a prática é lícita dentro das regras do desafio.

---

## 🔑 Criptografia Simétrica

> [!info] Uma Chave para Tudo
> Na criptografia simétrica existe apenas **uma chave** que é usada tanto para **criptografar** quanto para **descriptografar**.

![[Recursos/Segurança da informação/Criptografia/criptografia-1.png|Criptografia simétrica]]

### Características

| Aspecto | Descrição |
|---------|-----------|
| **Chaves** | Uma única chave compartilhada |
| **Velocidade** | Rápida |
| **Uso comum** | AES, DES, 3DES, Blowfish, ChaCha20 |
| **Problema** | Como compartilhar a chave de forma segura? |
| **Tamanho recomendado** | AES-128 mínimo; AES-256 para dados sensíveis |

### Modos de Operação do AES (ofensivo e defensivo)

| Modo | Vulnerabilidade Conhecida | Recomendação |
|------|--------------------------|--------------|
| ECB | Padrões visíveis (imagem do pinguim Linux) | 🚫 Nunca usar |
| CBC | Padding Oracle Attack (POODLE, BEAST) | ⚠️ Usar com HMAC |
| CTR | Reutilização de nonce quebra confidencialidade | ⚠️ Nunca reutilizar nonce |
| GCM | Seguro com nonce único | ✅ Recomendado |
| CCM | Seguro, usado em redes sem fio (802.11) | ✅ Recomendado |

> [!danger] 🔴 Ataque Real: ECB Penguin
> O modo ECB cifra cada bloco de 16 bytes de forma **independente**. Se dois blocos de plaintext são iguais, o ciphertext também será igual. Isso torna padrões visíveis em imagens e arquivos estruturados. Em um pentest, detectar uso de ECB em APIs é sinal de criptografia fraca.

**Recursos práticos:**
- [🔧 AES256 Encrypt & Decrypt Online](https://encode-decode.com/aes256-encrypt-online/)
- [📺 Criptografia Simétrica - Dicionário de Informática](https://www.youtube.com/watch?v=Yf4T91Kk1Gs)

---

## 🔐 Criptografia Assimétrica

> [!tip] Chave Pública e Chave Privada
> Também chamada de criptografia de **chave pública**, utiliza um par de chaves: uma **pública** (compartilhada) e uma **privada** (secreta).

![[Recursos/Segurança da informação/Criptografia/criptografia-2.png|Criptografia assimétrica]]

### Funções Principais

1. **Autenticação:** Assegura que uma pessoa ou entidade é quem realmente diz ser
2. **Criptografia:** Somente quem tem a chave privada pode descriptografar a mensagem

> [!info] Uso Comum
> É geralmente utilizada para transferir a **chave secreta** da criptografia simétrica de forma segura.

![[Recursos/Segurança da informação/Criptografia/criptografia-3.png|Funcionamento]]

![[Recursos/Segurança da informação/Criptografia/criptografia-4.png|Exemplo prático]]

### Comparativo de Algoritmos Assimétricos

| Algoritmo | Tamanho de Chave Seguro | Velocidade | Status 2026 |
|-----------|------------------------|------------|-------------|
| RSA | 2048 bits (mínimo), 4096 recomendado | Lenta | ✅ Seguro, mas vulnerável a computação quântica |
| DSA | 2048 bits | Média | ⚠️ Legado |
| ECDSA | 256 bits (equivale a RSA-3072) | Rápida | ✅ Recomendado |
| Ed25519 | 256 bits fixo | Muito rápida | ✅ Preferido para SSH |
| Diffie-Hellman | 2048 bits (mínimo) | Lenta | ⚠️ Substituir por ECDH |

**Recursos práticos:**
- [🔧 RSA Encryption/Decryption Online](https://www.devglan.com/online-tools/rsa-encryption-decryption)
- [📺 Criptografia Assimétrica - Dicionário de Informática](https://www.youtube.com/watch?v=GeSnN8Tt04U)

### 🔑 Exemplo de Chave Pública

```
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5WYVaFaBIkUT1ABgQ1Gf
Rlc1Y1QXjJsM112jJDiPUur+Yfvwv2Wb/NDqZHGtmz4UoLUXhpOTNBKFQCJ68W4N
CUodQoJzRpDapWb12c8lmRnBjgQhYQpWYtx9qX0NxP0/PWNwH9TEWKezxbs8SFUi
kXLlAmmHj2I31PUZaapjHGcmm7pyIo8IQ84zyjW7tM7KgsJmmOHN7LC+w3Lt6uOC
5iCVMWlZDdunf4Ng0eE93MNg2VGX/aL8fv97PeEs1cPga9gblsx2gwhFrjaK6/3v
YEV8GW/jOAlLZXOk6wKWjNVfqIdAXhfMHH3ElhuDE7MlzU5Kb5Ck18oYYvKs/2Pu
kQIDAQAB
-----END PUBLIC KEY-----
```

---

## #️⃣ Hash (Função de Resumo)

> [!info] Impressão Digital de Dados
> Uma função Hash mapeia dados grandes e de tamanho variável para dados pequenos de tamanho **fixo**. Os valores retornados são chamados **hashes** ou **códigos hash**.

### Algoritmos de Hash

| Algoritmo | Tamanho | Status | Velocidade (RTX 4090) |
|-----------|---------|--------|-----------------------|
| MD5 | 128 bits | 🔴 Obsoleto/Quebrado | ~164 bilhões H/s |
| SHA1 | 160 bits | 🔴 Obsoleto/Quebrado | ~54 bilhões H/s |
| **SHA256** | 256 bits | ✅ Recomendado | ~22 bilhões H/s |
| SHA384 | 384 bits | ✅ Seguro | ~8 bilhões H/s |
| SHA512 | 512 bits | ✅ Seguro | ~8 bilhões H/s |
| RIPEMD-160 | 160 bits | ✅ Usado em Bitcoin | ~15 bilhões H/s |
| bcrypt | variável | ✅ Para senhas | ~184.000 H/s (fator 10) |
| Argon2id | variável | ✅ Melhor para senhas | Depende de parâmetros |
| NTLM | 128 bits | 🔴 Obsoleto (Windows) | ~100 bilhões H/s |

> [!danger] 🔴 Por que velocidade importa para o atacante?
> MD5 a 164 bilhões de hashes por segundo significa que uma senha de 6 caracteres (letras+números) pode ser quebrada em **menos de 1 segundo** numa RTX 4090. Um hash de senha sem salt é uma vulnerabilidade crítica.

### Principais Aplicações

- **Verificar integridade de arquivos:** Confirmar que um download não foi corrompido
- **Armazenar senhas:** Nunca armazene senhas em texto puro!
- **Assinaturas digitais:** Hash da mensagem é o que se assina, não a mensagem inteira
- **Blockchain:** Encadeamento de blocos via hash (ver [[Blockchain]])
- **Threat hunting:** Hash MD5/SHA256 de malware em listas de IOC

**Recursos práticos:**
- [🔧 Gerador de Hash](http://andti.com.br/tool/hash)
- [🔧 CrackStation (lookup online)](https://crackstation.net/)
- [📺 O que é um hash? (Bitcoin/Blockchain)](https://www.youtube.com/watch?v=sCWeeAPIFoQ)

---

## 🔓 Ataques a Hashes e Criptografia (Perspectiva Ofensiva)

> [!warning] ⚠️ Contexto Ofensivo
> Esta seção apresenta técnicas usadas por pentesters e red teamers para testar a robustez de sistemas de autenticação. Praticar apenas em dados próprios, CTFs ou com autorização escrita. Art. 154-A CP.

### Taxonomia de Ataques a Hashes

```mermaid
graph TD
    A[Hash ou Texto Cifrado Interceptado] --> B{Tipo de Ataque}
    B --> C[Dicionário]
    B --> D[Força Bruta]
    B --> E[Rainbow Table]
    B --> F[Regras / Mutações]
    B --> G[Lookup Online]
    C --> H[wordlist: rockyou.txt]
    D --> I[charset: ?l?u?d?s]
    E --> J[Tabela pré-computada sem salt]
    F --> K[best64.rule / dive.rule]
    G --> L[CrackStation / Hashes.com]
    H --> M((Senha Recuperada))
    I --> M
    J --> M
    K --> M
    L --> M
```

### Identificando o Tipo de Hash

Antes de atacar, é preciso saber o que está se atacando:

```bash
# Instalar hashid (Kali já traz)
pip install hashid

# Identificar hash desconhecido
hashid '5f4dcc3b5aa765d61d8327deb882cf99'
# Resultado: [+] MD5 [+] Domain Cached Credentials ...

# Alternativa: hash-identifier (interativo)
hash-identifier
```

Tabela de referência rápida por tamanho:

| Tamanho (hex chars) | Candidatos |
|---------------------|------------|
| 32 | MD5, NTLM, MD4 |
| 40 | SHA1, MySQL4+ |
| 56 | SHA224 |
| 64 | SHA256, BLAKE2s |
| 96 | SHA384 |
| 128 | SHA512, Whirlpool |

### Hashcat: Referência de Modos

```bash
# Modos de ataque (-a)
-a 0   # Dicionário (wordlist)
-a 1   # Combinação (duas wordlists)
-a 3   # Força bruta (mask attack)
-a 6   # Wordlist + máscara
-a 7   # Máscara + wordlist

# Tipos de hash (-m) mais cobrados em CTF e pentest
-m 0      # MD5
-m 100    # SHA1
-m 1400   # SHA256
-m 1700   # SHA512
-m 1000   # NTLM (Windows)
-m 3200   # bcrypt $2*$
-m 13400  # KeePass
-m 22000  # WPA-PBKDF2-PMKID (Wi-Fi)
-m 18200  # Kerberos AS-REP (AS-REPRoasting)
-m 13100  # Kerberos TGS-REP (Kerberoasting)
```

### Ataque de Dicionário com Hashcat

```bash
# Ataque básico com rockyou.txt
hashcat -m 0 -a 0 hashes.txt /usr/share/wordlists/rockyou.txt

# Com regras (mutações: Senha -> S3nh@!, senha123 etc.)
hashcat -m 0 -a 0 hashes.txt rockyou.txt -r /usr/share/hashcat/rules/best64.rule

# Com regra dive.rule (mais abrangente, mais lenta)
hashcat -m 0 -a 0 hashes.txt rockyou.txt -r /usr/share/hashcat/rules/dive.rule

# SHA256 com wordlist
hashcat -m 1400 -a 0 hash_sha256.txt rockyou.txt

# Ver progresso em tempo real
hashcat -m 0 -a 0 hashes.txt rockyou.txt --status --status-timer=5
```

### Ataque de Força Bruta com Máscara

```bash
# Charset disponível
?l = abcdefghijklmnopqrstuvwxyz
?u = ABCDEFGHIJKLMNOPQRSTUVWXYZ
?d = 0123456789
?s = símbolos especiais
?a = todos acima combinados

# Senha de 6 dígitos numéricos (PIN)
hashcat -m 0 -a 3 hash.txt ?d?d?d?d?d?d

# Senha de 8 chars: maiúscula + 6 letras minúsculas + dígito
hashcat -m 0 -a 3 hash.txt ?u?l?l?l?l?l?l?d

# Incremental (testa 1 a 8 chars)
hashcat -m 0 -a 3 hash.txt ?a?a?a?a?a?a?a?a --increment --increment-min=1
```

### John the Ripper: Alternativa CPU/GPU

```bash
# Identificação automática do tipo
john hash.txt

# Com wordlist e regras
john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt
john --wordlist=rockyou.txt --rules=Jumbo hash.txt

# SHA256 explícito
john --format=raw-sha256 --wordlist=rockyou.txt hash.txt

# Ver hashes já quebrados
john --show hash.txt

# Cracking de /etc/shadow (Linux)
unshadow /etc/passwd /etc/shadow > shadow_combined.txt
john --wordlist=rockyou.txt shadow_combined.txt
```

### Rainbow Tables vs Salting

```mermaid
graph LR
    subgraph Sem Salt - Vulnerável
        A1[senha123] --> B1[hash fixo: 482c811da5d5b4bc...]
        B1 --> C1[Rainbow Table encontra em milissegundos]
    end
    subgraph Com Salt - Defendido
        A2[senha123] --> B2[+ salt aleatório: a7f3x]
        B2 --> C2[hash único: 9d2b1c7...a7f3x]
        C2 --> D2[Rainbow Table inútil: salt muda tudo]
    end
```

> [!success] Defesa: Sempre use salt + KDF
> Em aplicações modernas, nunca use `md5(senha)` ou `sha256(senha)`. Use funções de derivação de chave (KDF) com salt embutido:
> ```python
> # Python: bcrypt com salt automático
> import bcrypt
> hashed = bcrypt.hashpw(b"senha123", bcrypt.gensalt(rounds=12))
> 
> # Python: Argon2id (recomendado pelo NIST 2026)
> from argon2 import PasswordHasher
> ph = PasswordHasher()
> hashed = ph.hash("senha123")
> ```

### Ataque Padding Oracle (CBC)

O **Padding Oracle Attack** explora sistemas que revelam se o padding de uma mensagem cifrada em modo CBC está correto ou não. O atacante faz requisições modificadas e observa o comportamento da resposta (erro de padding vs. erro de aplicação).

Contexto histórico: vulnerabilidades POODLE (SSLv3, 2014), BEAST (TLS 1.0), Lucky13 (TLS até 1.2) exploraram variações deste princípio.

```bash
# padbuster: ferramenta automatizada para padding oracle
# Instalação
pip install padbuster   # ou clonar do GitHub

# Exemplo de ataque (SOMENTE em lab autorizado)
padbuster http://lab-vulneravel.local/decrypt.php \
  "TOKEN_BASE64_CIFRADO" 8 \
  -encoding 0 \
  -cookies "session=TOKEN_BASE64_CIFRADO"
# O "8" = tamanho do bloco (AES=16 bytes, DES=8 bytes)
```

> [!tip] Defesa contra Padding Oracle
> Usar **AES-GCM** em vez de AES-CBC elimina a classe inteira de padding oracle attacks porque GCM é um modo AEAD (Authenticated Encryption with Associated Data): autentica E cifra, sem padding.

### Ferramentas de Análise de Criptografia Fraca

```bash
# SSLyze: auditoria de configuração TLS de um servidor
pip install sslyze
python -m sslyze alvo.com.br --regular

# testssl.sh: completo, sem dependências Python
bash testssl.sh alvo.com.br
# Mostra: versões suportadas, ciphers fracos, vulnerabilidades (BEAST, LUCKY13, POODLE, Heartbleed)

# OpenSSL: checar ciphers manualmente
openssl s_client -connect alvo.com.br:443 -tls1    # tenta TLS 1.0 (deve falhar em servidores seguros)
openssl s_client -connect alvo.com.br:443 -cipher NULL  # testa cipher NULL

# Verificar certificado completo
openssl s_client -connect alvo.com.br:443 2>/dev/null | openssl x509 -noout -text
```

---

## 🧪 Atividades de Laboratório

> [!example] 🧪 Atividade 1: Identificar e Quebrar um Hash com Hashcat
> **Objetivo:** Dado um hash desconhecido, identificar o algoritmo e recuperar a senha original.
>
> **Pré-requisitos:** Kali Linux (VM ou nativo), arquivo `rockyou.txt` em `/usr/share/wordlists/`
>
> **Passo 1: Preparar o hash alvo**
> ```bash
> # Gere você mesmo o hash para praticar (dado próprio)
> echo -n "senha123" | md5sum
> # Resultado: 43e14b49d3a7a5f0a84e48a29db6c6cb  -
>
> echo -n "password" | sha256sum
> # Resultado: 5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8  -
> ```
>
> **Passo 2: Identificar o tipo do hash**
> ```bash
> hashid '43e14b49d3a7a5f0a84e48a29db6c6cb'
> # Output esperado:
> # [+] MD2
> # [+] MD5         <--- este é o mais provável para 32 chars
> # [+] MD4
> ```
>
> **Passo 3: Quebrar com hashcat (dicionário)**
> ```bash
> # Salvar o hash num arquivo
> echo '43e14b49d3a7a5f0a84e48a29db6c6cb' > hash_alvo.txt
>
> # Ataque com rockyou.txt
> hashcat -m 0 -a 0 hash_alvo.txt /usr/share/wordlists/rockyou.txt
>
> # Resultado esperado (em segundos):
> # 43e14b49d3a7a5f0a84e48a29db6c6cb:senha123
> # Status: Cracked
> ```
>
> **Passo 4: Tentar com John the Ripper**
> ```bash
> john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt hash_alvo.txt
> john --show --format=raw-md5 hash_alvo.txt
> # Output: ? : senha123
> ```
>
> **Passo 5: Testar no CrackStation**
> Acesse [crackstation.net](https://crackstation.net/), cole o hash e observe:
> - MD5 de senhas comuns aparece **instantaneamente** (lookup em rainbow table)
> - SHA256 com salt **não encontra** (defesa funcionando)
>
> **Discussão:** Por que o MD5 de "senha123" caiu em segundos? Quais senhas **não** cairiam num dicionário?

---

> [!example] 🧪 Atividade 2: Cifrar e Decifrar com OpenSSL (Linha de Comando)
> **Objetivo:** Praticar criptografia simétrica e assimétrica diretamente pelo terminal, entendendo a diferença de velocidade e aplicação.
>
> **Parte A: Criptografia Simétrica com AES-256-GCM**
> ```bash
> # Gerar um arquivo de texto para cifrar
> echo "Dados confidenciais do aluno: CPF 000.000.000-00" > segredo.txt
>
> # Cifrar com AES-256-CBC (modo legacy, para comparação)
> openssl enc -aes-256-cbc -pbkdf2 -in segredo.txt -out segredo_cbc.enc
> # Vai pedir uma senha duas vezes
>
> # Decifrar
> openssl enc -aes-256-cbc -pbkdf2 -d -in segredo_cbc.enc -out segredo_decifrado.txt
> cat segredo_decifrado.txt
>
> # Cifrar com AES-256-GCM (recomendado 2026)
> openssl enc -aes-256-gcm -pbkdf2 -in segredo.txt -out segredo_gcm.enc
> openssl enc -aes-256-gcm -pbkdf2 -d -in segredo_gcm.enc -out segredo_gcm_dec.txt
> ```
>
> **Parte B: Par de Chaves RSA e Assinatura**
> ```bash
> # Gerar par de chaves RSA 4096 bits
> openssl genrsa -out chave_privada.pem 4096
> openssl rsa -in chave_privada.pem -pubout -out chave_publica.pem
>
> # Ver tamanho (curiosidade)
> wc -c chave_privada.pem chave_publica.pem
>
> # Assinar um arquivo
> openssl dgst -sha256 -sign chave_privada.pem -out assinatura.bin segredo.txt
>
> # Verificar assinatura (deve retornar "Verified OK")
> openssl dgst -sha256 -verify chave_publica.pem -signature assinatura.bin segredo.txt
>
> # Adulterar o arquivo e tentar verificar (deve falhar)
> echo "dado adulterado" >> segredo.txt
> openssl dgst -sha256 -verify chave_publica.pem -signature assinatura.bin segredo.txt
> # Retorno esperado: Verification Failure
> ```
>
> **Parte C: Comparar velocidade RSA vs AES**
> ```bash
> # Benchmark do OpenSSL
> openssl speed rsa2048 aes-256-cbc
> # Compare as operações por segundo: AES é ordens de magnitude mais rápido
> ```
>
> **Discussão:** Por que o TLS usa RSA/ECDH apenas para trocar a chave, e depois usa AES para a comunicação?

---

## ✍️ Assinatura Digital

> [!tip] Autenticidade Garantida
> A assinatura digital é um método de autenticação que substitui a assinatura física, eliminando a necessidade de documentos em papel.

### Propriedades Obrigatórias

| Propriedade | Descrição |
|-------------|-----------|
| **Autenticidade** | O receptor confirma que a assinatura foi feita pelo emissor |
| **Integridade** | Qualquer alteração invalida a assinatura |
| **Não-repúdio** | O emissor não pode negar a autenticidade da mensagem |

### ⚙️ Como Funciona

1. É gerado um **hash** da mensagem (hash 1)
2. O hash é **criptografado** com a chave privada do autor
3. É enviada a mensagem + hash criptografado
4. No recebimento, gera-se novo hash da mensagem (hash 2)
5. O hash 1 é **descriptografado** com a chave pública do autor
6. Se hash 1 = hash 2, a assinatura é **válida**

![[Recursos/Segurança da informação/Criptografia/criptografia-5.png|Processo de assinatura digital]]

[📺 Assinatura Digital e Hash - Segurança da Informação](https://www.youtube.com/watch?v=UlRCVihN3pE)

---

## 🌐 TLS e o Handshake (Perspectiva Ofensiva e Defensiva)

> [!info] O que é TLS?
> **TLS** (Transport Layer Security) protege a comunicação entre cliente e servidor usando criptografia simétrica + assimétrica, transformando HTTP em HTTPS.

### Diagrama do TLS 1.3 Handshake

```mermaid
sequenceDiagram
    participant C as Cliente
    participant S as Servidor
    C->>S: ClientHello (versões TLS suportadas, cipher suites, chave ECDH pública)
    S->>C: ServerHello (versão escolhida, chave ECDH pública do servidor)
    S->>C: Certificate (certificado X.509)
    S->>C: CertificateVerify (assinatura do handshake)
    S->>C: Finished (MAC do handshake)
    C->>S: Finished (MAC do handshake)
    Note over C,S: A partir daqui: AES-GCM com chave derivada do ECDH
```

> [!tip] TLS 1.3 vs 1.2: o que mudou?
> - TLS 1.3 (2018, RFC 8446) eliminou ciphers inseguros: RC4, DES, 3DES, MD5, SHA1 em MACs, RSA key exchange estático
> - Forward Secrecy obrigatório em TLS 1.3: cada sessão usa chave efêmera (ECDHE). Se a chave privada do servidor vazar, sessões passadas **não** são comprometidas
> - Handshake mais rápido: 1-RTT vs 2-RTT no TLS 1.2

### Versões TLS: O que ainda suportar é problema

| Versão | Status | Vulnerabilidades Conhecidas |
|--------|--------|-----------------------------|
| SSL 2.0 | 🔴 Proibido (RFC 6176) | DROWN, múltiplas |
| SSL 3.0 | 🔴 Proibido (RFC 7568) | POODLE |
| TLS 1.0 | 🔴 Descontinuado (PCI-DSS) | BEAST, POODLE-TLS |
| TLS 1.1 | 🔴 Descontinuado | Lucky13 |
| TLS 1.2 | ✅ Aceitável com configuração correta | Configuração incorreta |
| TLS 1.3 | ✅ Recomendado | Nenhuma conhecida até 2026 |

---

## 🏛️ PKI e Certificados Digitais

```mermaid
graph TD
    Root["🏛️ CA Raiz (Root CA)<br/>GlobalSign / DigiCert<br/>(Offline, HSM protegida)"]
    Inter["🔗 CA Intermediária<br/>RNP ICPEdu OV SSL CA 2019"]
    Leaf["📄 Certificado Final<br/>*.iff.edu.br<br/>(Wildcard, válido subdomínios)"]
    Browser["🌐 Navegador do Aluno<br/>(Anchor de confiança: Root CA pré-instalada)"]

    Root --> Inter
    Inter --> Leaf
    Browser -.->|"verifica cadeia de confiança"| Root
    Leaf -.->|"apresentado ao cliente"| Browser
```

---

## 📜 Certificado Digital

> [!info] Identidade Eletrônica
> O certificado digital é um documento eletrônico que atesta que uma chave pública realmente pertence a uma pessoa ou empresa.

### Conteúdo de um Certificado (X.509)

| Campo | Descrição |
|-------|-----------|
| **Versão** | Número da versão X.509 |
| **Número de Série** | Identificador único do certificado |
| **Algoritmo de Assinatura** | Algoritmo usado pela AC |
| **Nome do Emissor** | AC que produziu o certificado |
| **Período de Validade** | Data de início e expiração |
| **Nome do Sujeito** | Dono do certificado |
| **Chave Pública** | Chave pública do certificado |
| **Extensões** | Campos complementares |

**Recursos:**
- [📺 Certificado Digital - Dicionário de Informática](https://www.youtube.com/watch?v=Tcsd9vX1_YE)
- [📺 ICP-Brasil e Certificado Digital](https://www.youtube.com/watch?v=sfZ78441w90)
- [🔗 ICP-Brasil](https://www.gov.br/iti/pt-br/assuntos/icp-brasil)

---

## 🔍 Analisando Certificados na Prática

### Verificando o Certificado do IFF

![[Recursos/Segurança da informação/Criptografia/image.png|Certificado do IFF]]

#### Aba "Geral": Visão do Usuário

**Emitido para:**
- **Nome Comum (CN):** `*.iff.edu.br`
  - O asterisco (*) é um **Wildcard:** um certificado protege vários subdomínios
- **Organização (O):** `INSTITUTO FEDERAL...`
  - Certificado OV (Organização Validada): a AC verificou documentação

**Emitido por:**
- **Nome:** `RNP ICPEdu OV SSL CA 2019`
  - A **RNP** (Rede Nacional de Ensino e Pesquisa) é a provedora de serviços para instituições federais

**Período de Validade:**
- Certificados nunca são eternos para garantir renovação da segurança

**Impressões Digitais:**
- Códigos SHA-256 que identificam unicamente o certificado

#### Hierarquia de Confiança

```
GlobalSign (Raiz / O Avô)
    └── RNP ICPEdu (Intermediária / O Pai)
            └── *.iff.edu.br (Final / O Filho)
```

> [!success] Moral da História
> Seu computador confia no site do IFF porque confia na GlobalSign, que confia na RNP, que confia no IFF.

### Ângulo Ofensivo: Ataques a Certificados

| Ataque | Descrição | Defesa |
|--------|-----------|--------|
| Certificado autoassinado | Pentest: apresentar cert falso via MITM | Certificate Pinning, HPKP (legado), CAA DNS |
| CA comprometida | DigiNotar 2011: CA holandesa emitiu certs falsos do Google | Certificate Transparency (CT) logs obrigatórios |
| Wildcard roubado | Chave privada de `*.domínio.com` expõe todos subdomínios | Certificados por subdomínio, revogação rápida (OCSP) |
| Cert expirado | Servidores aceitando certs expirados são MITM-vulneráveis | Monitoramento automático + Let's Encrypt auto-renew |
| Rogue CA interna | Corporações injetam CA própria para inspecionar HTTPS interno | Awareness, CT logs em browsers modernos |

```bash
# Verificar se um domínio está nos Certificate Transparency logs
# (detecta certs emitidos sem seu conhecimento)
# Via crt.sh (online) ou ferramenta local:
curl -s "https://crt.sh/?q=iff.edu.br&output=json" | python3 -m json.tool | grep name_value | head -20
```

---

## 🔮 Criptografia Pós-Quântica (PQC): O Futuro já Chegou

> [!warning] 🚨 "Harvest Now, Decrypt Later" (HNDL)
> Adversários estatais (NSA, inteligência de nações rivais) já estão **coletando e armazenando** tráfego HTTPS cifrado hoje, esperando que computadores quânticos suficientemente poderosos quebrem RSA/ECC no futuro. Dados com segredo de longa vida (governamentais, médicos, financeiros) são alvo.

### Por que RSA e ECC estão ameaçados?

| Algoritmo Clássico | Ataque Quântico | Algoritmo Quântico |
|--------------------|-----------------|--------------------|
| RSA-2048 | Algoritmo de Shor | Quebra em horas com ~4.000 qubits lógicos |
| ECDSA / ECDH | Algoritmo de Shor | Mesma ameaça que RSA |
| AES-256 | Algoritmo de Grover | Reduz segurança para ~128 bits (ainda aceitável) |
| SHA-256/512 | Algoritmo de Grover | Reduz segurança pela metade (SHA-512 recomendado) |

> Hashes e AES sobrevivem à era quântica com ajustes de tamanho. RSA e ECC não sobrevivem.

### Algoritmos Aprovados pelo NIST (2024-2025)

Em agosto de 2024, o NIST publicou os primeiros padrões pós-quânticos. Em março de 2025, um quinto algoritmo foi adicionado:

| Padrão NIST | Base Matemática | Uso | Status |
|-------------|-----------------|-----|--------|
| **ML-KEM** (FIPS 203) | CRYSTALS-Kyber, Module-LWE | Troca de chaves / KEM | ✅ Aprovado ago/2024 |
| **ML-DSA** (FIPS 204) | CRYSTALS-Dilithium, Lattices | Assinatura digital | ✅ Aprovado ago/2024 |
| **SLH-DSA** (FIPS 205) | SPHINCS+, Hash-based | Assinatura (backup) | ✅ Aprovado ago/2024 |
| **FN-DSA** (FIPS 206) | FALCON, Lattices | Assinatura | ✅ Aprovado ago/2024 |
| **HQC** | Hamming Quasi-Cyclic, Códigos | KEM (alternativa) | ✅ Selecionado mar/2025 |

```mermaid
graph LR
    subgraph Hoje TLS 1.3
        A[ECDHE-X25519] --> C[Chave de sessão AES-256-GCM]
        B[ECDSA Cert] --> D[Autenticação servidor]
    end
    subgraph Futuro TLS 1.3 + PQC
        E[ML-KEM-768] --> G[Chave de sessão AES-256-GCM]
        F[ML-DSA Cert] --> H[Autenticação servidor]
        A -.->|Hybrid KEM| E
    end
```

> [!tip] Hybrid KEM: a transição segura
> Os primeiros deployments PQC usam **modo híbrido**: combina ECDH clássico com ML-KEM. Só quebra se ambos forem quebrados simultaneamente. O Chrome e Firefox já suportam X25519MLKEM768 (desde 2024-2025).

### Implicações para Pentest Red Team

```bash
# Verificar suporte a algoritmos pós-quânticos num servidor
openssl s_client -connect alvo.com:443 -groups X25519MLKEM768 2>&1 | grep "Server Temp Key"

# Verificar quais grupos de curva o servidor aceita (preferência por PQC = boa prática)
sslyze alvo.com --elliptic_curves
```

---

## 💡 Exercício: Sherlock do Certificado

> [!warning] Atividade Prática
> Abra a tela de certificado no navegador (clicando no cadeado) e responda:

1. **Verificação de Phishing:** O nome na "Organização" é realmente "Instituto Federal"?
2. **Verificação de Validade:** O certificado ainda está válido? Quantos dias faltam?
3. **Tipo de Certificado:** Esse certificado tem asterisco (*)? O que aconteceria se a chave privada fosse roubada?
4. **Algoritmo de assinatura:** Qual algoritmo foi usado? É SHA256withRSA, SHA384withECDSA ou outro?
5. **Certificate Transparency:** Verifique no [crt.sh](https://crt.sh/) quantos certificados já foram emitidos para o domínio do IFF. Há algum suspeito?

---

## 🛠️ Tarefas Práticas

### Gerar Hash de um Arquivo

**Linux:**
```bash
sha256sum arquivo.zip
```

**macOS:**
```bash
shasum -a 256 arquivo.zip
```

**Windows (PowerShell):**
```powershell
Get-FileHash arquivo.zip -Algorithm SHA256
```

**Online:** [hash-file.online](https://hash-file.online/)

---

### Wireshark: Comparando HTTP vs HTTPS

> [!tip] Demonstração Visual
> Use o Wireshark para comparar tráfego HTTP (legível) e HTTPS (cifrado). Ver também [[Análise de tráfego (Wireshark e TCPdump)]].

- **HTTP:** Cabeçalhos e dados aparecem legíveis
- **HTTPS:** Pacotes aparecem cifrados graças ao TLS

```bash
# Capturar handshake TLS pelo terminal
tcpdump -i eth0 -w captura_tls.pcap port 443

# Analisar com tshark (Wireshark CLI)
tshark -r captura_tls.pcap -Y "tls.handshake" -V | grep -E "Version|Cipher Suite|Supported Groups"
```

---

### Criptografando com AES-256

1. Acesse: [encode-decode.com/aes256-encrypt-online](https://encode-decode.com/aes256-encrypt-online/)
2. Escreva uma mensagem (ex.: "Prova sexta-feira")
3. Defina uma senha para criptografar
4. Clique em **Encrypt** e copie o texto criptografado
5. Troque com um colega (sem revelar a senha)
6. Tente descriptografar usando tentativas de senha

> [!warning] Discussão
> Como senhas fracas são quebradas facilmente? Por que chaves fortes são essenciais?

---

### Geração de Chaves RSA e Assinatura Digital

1. Acesse: [devglan.com/online-tools/rsa-encryption-decryption](https://www.devglan.com/online-tools/rsa-encryption-decryption)
2. Gere um par de chaves (2048 bits)
3. Use a **chave privada** para assinar uma mensagem
4. Envie para um colega: mensagem + chave pública + assinatura
5. O colega verifica usando a **chave pública**

---

### Assinando Arquivos no Linux com OpenSSL

#### 1. Preparar as Chaves

```bash
nano chave_privada.pem
# Cole o texto da chave, Ctrl+O para salvar, Ctrl+X para sair
```

#### 2. Assinar o Documento

```bash
openssl dgst -sha256 -sign chave_privada.pem -out assinatura.bin arquivo.pdf
```

#### 3. Verificar a Assinatura

```bash
openssl dgst -sha256 -verify chave_publica.pem -signature assinatura.bin arquivo.pdf
```

- **`Verified OK`:** Arquivo original e autêntico
- **`Verification Failure`:** Arquivo alterado ou assinatura falsa

---

## 📁 O que é um Arquivo .PEM?

> [!info] Container de Texto
> Um arquivo **.pem** é um container de texto usado para guardar chaves criptográficas e certificados digitais.

**PEM = Privacy Enhanced Mail** (formato que virou padrão mundial)

### Estrutura

```
-----BEGIN PRIVATE KEY-----
[Chave em Base64]
-----END PRIVATE KEY-----
```

### Analogia

- **A Jóia:** Sua chave privada matemática
- **O Arquivo .PEM:** Uma caixa de transporte acolchoada e etiquetada

### Outros Formatos de Chave/Certificado

| Formato | Extensão | Uso |
|---------|----------|-----|
| PEM | `.pem`, `.crt`, `.cer`, `.key` | Linux, Apache, nginx: base64 |
| DER | `.der`, `.cer` | Windows, Java: binário |
| PKCS#12 | `.p12`, `.pfx` | Exportar cert + chave privada juntos (Windows IIS) |
| PKCS#7 | `.p7b`, `.p7c` | Cadeia de certificados sem chave privada |
| JKS | `.jks` | Java KeyStore (legado, usar PKCS#12 em Java 9+) |

```bash
# Converter PEM para DER
openssl x509 -in cert.pem -outform DER -out cert.der

# Converter PEM para PKCS#12 (bundle cert + chave)
openssl pkcs12 -export -out bundle.p12 -inkey chave_privada.pem -in cert.pem

# Inspecionar um .p12 sem extrair
openssl pkcs12 -info -in bundle.p12 -noout
```

---

## 🔒 Guia Defensivo: Criptografia Correta em 2026

> [!success] ✅ Configurações Recomendadas (2026)

### Para Aplicações Web (TLS)

```nginx
# nginx: configuração segura TLS 2026
ssl_protocols TLSv1.2 TLSv1.3;
ssl_ciphers ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:TLS_AES_256_GCM_SHA384;
ssl_prefer_server_ciphers off;  # TLS 1.3 ignora, mas bom para 1.2
ssl_session_cache shared:SSL:10m;
ssl_stapling on;  # OCSP Stapling: verificação de revogação mais rápida
add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload";
```

### Para Armazenamento de Senhas

| Situação | Algoritmo Correto | Errado |
|----------|------------------|--------|
| Senhas de usuários | Argon2id (1ª opção), bcrypt, scrypt | MD5, SHA1, SHA256 sem salt |
| Tokens de API | HMAC-SHA256 com salt | MD5 |
| Chaves de API | Armazenar apenas o hash, nunca o texto | Plaintext no banco |
| Dados em repouso | AES-256-GCM + chave derivada de KMS | AES-ECB, DES |

### Para Comunicação entre Sistemas

```python
# Python: cryptography library (padrão de facto 2026)
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
import os

# Gerar chave
key = AESGCM.generate_key(bit_length=256)
aesgcm = AESGCM(key)

# Cifrar
nonce = os.urandom(12)  # NUNCA reutilizar o nonce com a mesma chave
ciphertext = aesgcm.encrypt(nonce, b"dado secreto", b"aad_associado")

# Decifrar (autentica automaticamente, lança InvalidTag se adulterado)
plaintext = aesgcm.decrypt(nonce, ciphertext, b"aad_associado")
```

---

## 🗓️ Linha do Tempo: Ataques Históricos que Moldaram a Criptografia Atual

| Ano | Evento | Impacto |
|-----|--------|---------|
| 1997 | DES quebrado por força bruta (EFF Deep Crack) | DES aposentado, 3DES temporário |
| 2001 | AES padronizado pelo NIST | Substitui DES definitivamente |
| 2004 | MD5 colisões demonstradas (Xiaoyun Wang) | MD5 obsoleto para integridade |
| 2005 | SHA1 ataque teórico (Xiaoyun Wang) | Início da migração para SHA256 |
| 2011 | DigiNotar comprometida (Iran, certs Google falsos) | Certificate Transparency obrigatório |
| 2011 | BEAST attack (TLS 1.0 CBC) | TLS 1.0 deprecated |
| 2013 | PRISM (Snowden): NSA backdoor em DUAL_EC_DRBG | Desconfiança em algoritmos NSA, Bullrun |
| 2014 | POODLE attack (SSLv3) | SSLv3 proibido (RFC 7568) |
| 2014 | Heartbleed (OpenSSL buffer over-read) | 500k+ servidores expostos, chaves privadas vazadas |
| 2017 | SHA1 colisão prática (SHAttered, Google/CWI) | SHA1 definitivamente aposentado |
| 2018 | TLS 1.3 publicado (RFC 8446) | Padrão atual, elimina ciphers fracos |
| 2024 | NIST finaliza ML-KEM, ML-DSA, SLH-DSA | Era pós-quântica iniciada |
| 2025 | NIST adiciona HQC como 5º algoritmo PQC | Backup para ML-KEM |
| 2025 | Hashcat 7.0.0: +70 novos tipos de hash | Novos alvos: MetaMask, LUKS, Bitwarden |

---

## 📚 Materiais Complementares

- [📺 Conceitos Básicos de Criptografia - Parte 1](https://www.youtube.com/watch?v=CcU5Kc_FN_4)
- [📺 Conceitos Básicos de Criptografia - Parte 2](https://www.youtube.com/watch?v=HCHqtpipwu4)
- [🔗 Hashcat Wiki: Hash Types](https://hashcat.net/wiki/doku.php?id=hashcat)
- [🔧 CrackStation (lookup de hashes)](https://crackstation.net/)
- [🔧 Hashes.com (lookup + análise)](https://hashes.com/en/decrypt/hash)
- [🔧 testssl.sh (auditoria TLS)](https://testssl.sh/)
- [📺 NIST PQC: O que é e por que importa](https://www.youtube.com/results?search_query=NIST+post+quantum+cryptography+2024)
- [🔗 NIST PQC Standards (FIPS 203-206)](https://csrc.nist.gov/projects/post-quantum-cryptography)
- [🔗 Certificate Transparency: crt.sh](https://crt.sh/)

---

> [!note] 📚 Fontes (2026)
> - [Hash Cracking Tutorial: Hashcat and John the Ripper (2026) | HackerDNA](https://hackerdna.com/blog/hash-cracking)
> - [Hashcat 7.0.0: Massive Update for Password Crackers | Hack The Box Blog](https://www.hackthebox.com/blog/hashcat-7-release-top-new-features)
> - [Open-source password recovery utility Hashcat 7.0.0 released | Help Net Security](https://www.helpnetsecurity.com/2025/08/04/hashcat-open-source-password-recovery-7-0-0-released/)
> - [Criptografia Pós-Quântica: os novos algoritmos | Defesa em Profundidade](https://www.defesa-em-profundidade.net/pubs/2025/01/algoritmos-pos-quanticos/)
> - [NIST PQC: 3 algoritmos que protegem sua empresa | Kryptus](https://kryptus.com/criptografia-pos-quantica-nist-parte-01/)
> - [Padding Oracle Attack: Cryptographic Vulnerability | CAPEC-463](https://capec.mitre.org/data/definitions/463.html)
> - [Testing for Padding Oracle | OWASP WSTG](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/09-Testing_for_Weak_Cryptography/02-Testing_for_Padding_Oracle)
> - [Password Cracking with Hashcat and John the Ripper | Payload Playground](https://payloadplayground.com/blog/password-cracking-hashcat-john)
> - [How to Use Hashcat for Password Cracking (2026 Guide) | StationX](https://www.stationx.net/how-to-use-hashcat/stationx.net/how-to-use-hashcat/)
> - [Criptografia Pós-Quântica: Proteja Seus Dados em 2025 | Golden Cloud](https://goldencloud.tech/criptografia-pos-quantica-proteja-seus-dados-2025/)
