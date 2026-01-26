---
tipo: aula
resumo: "Unidades de Medida: bit e byte, unidades de armazenamento (KB, MB, GB, TB, PB), velocidade de dados (Kbps, Mbps, Gbps), processamento (Hz, KHz, MHz, GHz) e conversões."
tags:
  - aula
  - unidades-medida
  - fundamentos
---

# Unidades de Medida

> [!quote] Quantificando a Informação
> *Entender as unidades de medida é essencial para compreender capacidade de armazenamento, velocidade de internet e desempenho do computador.*

---

## 🤔 Por que Estudar Unidades de Medida?

> [!info] Importância
> As unidades de medida ajudam a quantificar armazenamento, velocidade de transmissão e poder de processamento dos computadores.

---

## 💾 Bit e Byte

> [!info] A Base de Tudo

| Unidade | Descrição | Valor |
|---------|-----------|-------|
| **Bit** | Menor unidade de informação | 0 ou 1 |
| **Byte** | Conjunto de 8 bits | Representa um caractere |

> [!example] Exemplo
> A letra "A" em binário: `01000001` (8 bits = 1 byte)

---

## 📦 Unidades de Armazenamento

### Progressão (Base 10 - Comercial)

> [!info] Usado por Fabricantes
> Fabricantes de HD/SSD usam base 10 (multiplicação por 1000).

| Unidade | Abreviação | Valor |
|---------|------------|-------|
| **Kilobyte** | KB | 1.000 bytes |
| **Megabyte** | MB | 1.000.000 bytes |
| **Gigabyte** | GB | 1.000.000.000 bytes |
| **Terabyte** | TB | 1.000.000.000.000 bytes |
| **Petabyte** | PB | 1.000.000.000.000.000 bytes |

---

### Progressão (Base 2 - Técnica)

> [!tip] Usado em Memória RAM
> O sistema real usa base 2 (multiplicação por 1024).

| Unidade | Abreviação | Valor |
|---------|------------|-------|
| **Kibibyte** | KiB | 1.024 bytes |
| **Mebibyte** | MiB | 1.048.576 bytes |
| **Gibibyte** | GiB | 1.073.741.824 bytes |
| **Tebibyte** | TiB | 1.099.511.627.776 bytes |

> [!warning] Por que a Diferença?
> Um HD de "500 GB" (base 10) aparece como ~465 GiB (base 2) no sistema operacional. Você não perdeu espaço!

---

## 🚀 Unidades de Velocidade de Dados

> [!info] Internet e Transferências
> Velocidade de internet é medida em **bits por segundo** (não bytes!).

| Unidade | Abreviação | Valor |
|---------|------------|-------|
| **Kilobit/s** | Kbps | 1.000 bits/segundo |
| **Megabit/s** | Mbps | 1.000.000 bits/segundo |
| **Gigabit/s** | Gbps | 1.000.000.000 bits/segundo |

> [!tip] Conversão Importante
> Para converter Mbps para MB/s, divida por 8.
> - Internet de **100 Mbps** = **12,5 MB/s** de download máximo

---

## ⚡ Unidades de Processamento

> [!info] Velocidade do Processador (CPU)
> Medida em Hertz (Hz) - ciclos por segundo.

| Unidade | Abreviação | Valor |
|---------|------------|-------|
| **Hertz** | Hz | 1 ciclo/segundo |
| **Kilohertz** | KHz | 1.000 ciclos/segundo |
| **Megahertz** | MHz | 1.000.000 ciclos/segundo |
| **Gigahertz** | GHz | 1.000.000.000 ciclos/segundo |

> [!example] Exemplo Prático
> Um processador de **3,5 GHz** executa 3,5 bilhões de ciclos por segundo!

---

## 🔄 Conversões Úteis

### Armazenamento

| De | Para | Fórmula |
|----|------|---------|
| GB → MB | Multiplicar | × 1.000 |
| MB → KB | Multiplicar | × 1.000 |
| KB → bytes | Multiplicar | × 1.000 |
| bytes → KB | Dividir | ÷ 1.000 |

### Velocidade de Internet

| Velocidade | Download Teórico |
|------------|------------------|
| 10 Mbps | 1,25 MB/s |
| 50 Mbps | 6,25 MB/s |
| 100 Mbps | 12,5 MB/s |
| 500 Mbps | 62,5 MB/s |
| 1 Gbps | 125 MB/s |

---

## 📊 Referências Práticas

> [!tip] Para Ter uma Ideia

| Item | Tamanho Aproximado |
|------|-------------------|
| Uma página de texto | ~2 KB |
| Uma foto (JPEG) | ~2-5 MB |
| Uma música (MP3) | ~3-5 MB |
| Um filme (Full HD) | ~4-8 GB |
| Um jogo moderno | ~50-100 GB |

---

## 📝 Conclusão

> [!success] Pontos Principais

- **Bit** é a menor unidade (0 ou 1), **byte** = 8 bits
- **Armazenamento**: KB, MB, GB, TB, PB (base 10 comercial) ou KiB, MiB, GiB (base 2 técnica)
- **Velocidade de internet**: Kbps, Mbps, Gbps (bits, não bytes!)
- **Processamento**: Hz, MHz, GHz (ciclos por segundo)
- Saber converter unidades ajuda a entender especificações técnicas

