---
tipo: aula
resumo: "Fundamentos de criptografia: simétrica, assimétrica, hash, assinaturas digitais e certificados."
tags:
  - aula
  - seguranca-da-informacao
  - criptografia
  - hash
  - certificados
---

# Criptografia

> [!quote] A Arte de Esconder Informações
> *A criptografia é um mecanismo de segurança que transforma informações legíveis em dados ilegíveis para pessoas não autorizadas.*

Para realizar essas transformações, utiliza-se algoritmos predefinidos e uma **chave secreta** que codifica a mensagem e depois a decodifica no destino.

![[Recursos/Segurança da informação/Criptografia/criptografia.png|Processo de criptografia]]

[📺 Criptografia | Nerdologia Tech](https://www.youtube.com/watch?v=_Eeg1LxVWa8)

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
| **Uso comum** | AES, DES, 3DES, Blowfish |
| **Problema** | Como compartilhar a chave de forma segura? |

**Recursos práticos:**
- [🔧 AES256 Encrypt & Decrypt Online](https://encode-decode.com/aes256-encrypt-online/)
- [📺 Criptografia Simétrica - Dicionário de Informática](https://www.youtube.com/watch?v=Yf4T91Kk1Gs)

---

## 🔐 Criptografia Assimétrica

> [!tip] Chave Pública e Chave Privada
> Também chamada de criptografia de **chave pública**, utiliza um par de chaves: uma **pública** (compartilhada) e uma **privada** (secreta).

![[Recursos/Segurança da informação/Criptografia/criptografia-2.png|Criptografia assimétrica]]

### Funções Principais

1. **Autenticação** — Assegura que uma pessoa ou entidade é quem realmente diz ser
2. **Criptografia** — Somente quem tem a chave privada pode descriptografar a mensagem

> [!info] Uso Comum
> É geralmente utilizada para transferir a **chave secreta** da criptografia simétrica de forma segura.

![[Recursos/Segurança da informação/Criptografia/criptografia-3.png|Funcionamento]]

![[Recursos/Segurança da informação/Criptografia/criptografia-4.png|Exemplo prático]]

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

| Algoritmo | Tamanho | Status |
|-----------|---------|--------|
| MD5 | 128 bits | ⚠️ Obsoleto |
| SHA1 | 160 bits | ⚠️ Obsoleto |
| **SHA256** | 256 bits | ✅ Recomendado |
| SHA384 | 384 bits | ✅ Seguro |
| SHA512 | 512 bits | ✅ Seguro |
| RIPEMD-160 | 160 bits | ✅ Usado em Bitcoin |

### Principais Aplicações

- **Verificar integridade de arquivos** — Confirmar que um download não foi corrompido
- **Armazenar senhas** — Nunca armazene senhas em texto puro!

**Recursos práticos:**
- [🔧 Gerador de Hash](http://andti.com.br/tool/hash)
- [📺 O que é um hash? (Bitcoin/Blockchain)](https://www.youtube.com/watch?v=sCWeeAPIFoQ)

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

#### Aba "Geral" — Visão do Usuário

**Emitido para:**
- **Nome Comum (CN):** `*.iff.edu.br`
  - O asterisco (*) é um **Wildcard** — um certificado protege vários subdomínios
- **Organização (O):** `INSTITUTO FEDERAL...`
  - Certificado OV (Organização Validada) — a AC verificou documentação

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

---

## 💡 Exercício: Sherlock do Certificado

> [!warning] Atividade Prática
> Abra a tela de certificado no navegador (clicando no cadeado) e responda:

1. **Verificação de Phishing:** O nome na "Organização" é realmente "Instituto Federal"?
2. **Verificação de Validade:** O certificado ainda está válido? Quantos dias faltam?
3. **Tipo de Certificado:** Esse certificado tem asterisco (*)? O que aconteceria se a chave privada fosse roubada?

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
> Use o Wireshark para comparar tráfego HTTP (legível) e HTTPS (cifrado).

- **HTTP:** Cabeçalhos e dados aparecem legíveis
- **HTTPS:** Pacotes aparecem cifrados graças ao TLS

> [!info] O que é TLS?
> **TLS** (Transport Layer Security) protege a comunicação entre cliente e servidor usando criptografia simétrica + assimétrica, transformando HTTP em HTTPS.

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

- **`Verified OK`** — Arquivo original e autêntico
- **`Verification Failure`** — Arquivo alterado ou assinatura falsa

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

---

## 📚 Materiais Complementares

- [📺 Conceitos Básicos de Criptografia - Parte 1](https://www.youtube.com/watch?v=CcU5Kc_FN_4)
- [📺 Conceitos Básicos de Criptografia - Parte 2](https://www.youtube.com/watch?v=HCHqtpipwu4)

