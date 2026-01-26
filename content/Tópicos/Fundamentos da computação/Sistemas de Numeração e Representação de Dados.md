---
tipo: aula
resumo: "Sistemas de Numeração e Representação de Dados: sistemas decimal, binário, octal e hexadecimal, aritmética binária e representação de dados (números, texto, cores)."
tags:
  - aula
  - sistemas-numeração
  - representação-dados
  - fundamentos
---

# Sistemas de Numeração e Representação de Dados

> [!quote] A Linguagem dos Computadores
> *Computadores entendem apenas 0s e 1s. Entender sistemas de numeração é entender como eles "pensam".*

---

## 🎮 Recurso Interativo

> [!tip] Aprenda Jogando!
> 🔗 [Binary Game](https://learningcontent.cisco.com/games/binary/index.html) - Jogo interativo da Cisco para aprender sistema binário

---

## 📚 Tópicos da Aula

| Tópico | Descrição |
|--------|-----------|
| Sistema Decimal | Base 10, usado no dia a dia |
| Sistema Binário | Base 2, usado pelos computadores |
| Sistema Octal | Base 8, histórico na computação |
| Sistema Hexadecimal | Base 16, usado em cores e memória |
| Aritmética Binária | Operações com números binários |
| Representação de Dados | Como texto, números e cores são armazenados |

---

## 🔢 Sistema Decimal (Base 10)

> [!info] O Sistema do Dia a Dia
> O sistema decimal usa 10 símbolos: **0, 1, 2, 3, 4, 5, 6, 7, 8, 9**

### Estrutura Posicional

| Posição | Nome | Valor |
|---------|------|-------|
| 0 | Unidades | 10⁰ = 1 |
| 1 | Dezenas | 10¹ = 10 |
| 2 | Centenas | 10² = 100 |
| 3 | Milhares | 10³ = 1000 |

### Exemplo

O número **352** em decimal:
```
3 × 10² + 5 × 10¹ + 2 × 10⁰
= 300 + 50 + 2
= 352
```

---

## 💻 Sistema Binário (Base 2)

> [!info] A Linguagem dos Computadores
> O sistema binário usa apenas 2 símbolos: **0 e 1** (ligado/desligado)

### Estrutura Posicional

| Posição | Valor | Decimal |
|---------|-------|---------|
| 0 | 2⁰ | 1 |
| 1 | 2¹ | 2 |
| 2 | 2² | 4 |
| 3 | 2³ | 8 |
| 4 | 2⁴ | 16 |
| 5 | 2⁵ | 32 |
| 6 | 2⁶ | 64 |
| 7 | 2⁷ | 128 |

### Exemplo: Binário → Decimal

O número **1011** em binário:
```
1 × 2³ + 0 × 2² + 1 × 2¹ + 1 × 2⁰
= 8 + 0 + 2 + 1
= 11 (decimal)
```

> [!tip] Por que Binário?
> Computadores usam circuitos elétricos com dois estados: ligado (1) e desligado (0). O sistema binário representa perfeitamente essa realidade física.

---

## 8️⃣ Sistema Octal (Base 8)

> [!info] Sistema Histórico
> O sistema octal usa 8 símbolos: **0, 1, 2, 3, 4, 5, 6, 7**

### Estrutura Posicional

| Posição | Valor | Decimal |
|---------|-------|---------|
| 0 | 8⁰ | 1 |
| 1 | 8¹ | 8 |
| 2 | 8² | 64 |

### Exemplo

O número **547** em octal:
```
5 × 8² + 4 × 8¹ + 7 × 8⁰
= 320 + 32 + 7
= 359 (decimal)
```

---

## 🔷 Sistema Hexadecimal (Base 16)

> [!info] Sistema Compacto
> O sistema hexadecimal usa 16 símbolos: **0-9** e **A-F**

### Tabela de Conversão

| Hex | Decimal | Hex | Decimal |
|-----|---------|-----|---------|
| 0 | 0 | 8 | 8 |
| 1 | 1 | 9 | 9 |
| 2 | 2 | A | 10 |
| 3 | 3 | B | 11 |
| 4 | 4 | C | 12 |
| 5 | 5 | D | 13 |
| 6 | 6 | E | 14 |
| 7 | 7 | F | 15 |

### Exemplo

O número **2A3** em hexadecimal:
```
2 × 16² + A × 16¹ + 3 × 16⁰
= 2 × 256 + 10 × 16 + 3 × 1
= 512 + 160 + 3
= 675 (decimal)
```

> [!tip] Uso Prático
> Hexadecimal é muito usado para representar cores (#FF5733), endereços de memória e valores de bytes de forma compacta.

---

## ➕ Aritmética Binária

### Adição

| Operação | Resultado |
|----------|-----------|
| 0 + 0 | 0 |
| 0 + 1 | 1 |
| 1 + 0 | 1 |
| 1 + 1 | 10 (0 e "vai um") |

### Exemplo de Soma

```
    1011  (11 em decimal)
  + 0110  (6 em decimal)
  ------
   10001  (17 em decimal)
```

---

## 📊 Representação de Dados

### Bits e Bytes

| Unidade | Valor |
|---------|-------|
| **1 bit** | 0 ou 1 |
| **1 byte** | 8 bits |
| **1 nibble** | 4 bits (meio byte) |

---

### Representação de Texto

| Padrão | Descrição | Exemplo |
|--------|-----------|---------|
| **ASCII** | 128 caracteres (7 bits) | 'A' = 65 = 01000001 |
| **Unicode** | Milhões de caracteres | Suporta emojis, idiomas |
| **UTF-8** | Unicode variável (1-4 bytes) | Padrão da web |

---

### Representação de Cores (RGB)

> [!info] Sistema RGB
> Cores são representadas por três valores: **R**ed, **G**reen, **B**lue (0-255 cada)

| Cor | RGB | Hexadecimal |
|-----|-----|-------------|
| Vermelho | (255, 0, 0) | #FF0000 |
| Verde | (0, 255, 0) | #00FF00 |
| Azul | (0, 0, 255) | #0000FF |
| Branco | (255, 255, 255) | #FFFFFF |
| Preto | (0, 0, 0) | #000000 |

---

## 🔄 Tabela de Conversão Rápida

| Decimal | Binário | Octal | Hexadecimal |
|---------|---------|-------|-------------|
| 0 | 0000 | 0 | 0 |
| 1 | 0001 | 1 | 1 |
| 5 | 0101 | 5 | 5 |
| 10 | 1010 | 12 | A |
| 15 | 1111 | 17 | F |
| 16 | 10000 | 20 | 10 |
| 255 | 11111111 | 377 | FF |

