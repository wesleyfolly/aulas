---
tipo: aula
resumo: "Fundamentos de programação: linguagens naturais vs linguagens de programação, compilação vs interpretação, conceitos de bibliotecas e APIs."
tags:
  - aula
  - programacao
  - fundamentos
  - compilacao
  - interpretacao
---

# Conceitos Gerais de Programação

> [!quote] Base para Todo Programador
> *Compreender os fundamentos é essencial antes de mergulhar em qualquer linguagem de programação.*

---

## 🗣️ Linguagens Naturais vs Linguagens de Programação

![[Recursos/Programação/Conceitos gerais de programação/linguagem-natural-vs-programacao.png|Linguagem Natural vs Programação]]

> [!info] Comparativo

| Aspecto | Linguagem Natural | Linguagem de Programação |
|---------|-------------------|--------------------------|
| **Usuário** | Humanos | Máquinas |
| **Exemplo** | Português, Inglês | Python, Java |
| **Característica** | Ambígua, flexível | Precisa, formal |
| **Função** | Comunicação | Instruções para computador |

---

## ⚙️ Compilação vs Interpretação

> [!info] Duas Formas de Tradução
> Existem duas formas diferentes de **transformar um programa de uma linguagem de alto nível em linguagem de máquina**.

---

### 🔨 Compilação

![[Recursos/Programação/Conceitos gerais de programação/compilador-processo.png|Processo de Compilação]]

> [!tip] Características

| Aspecto | Descrição |
|---------|-----------|
| **Processo** | Código fonte traduzido uma vez |
| **Resultado** | Gera executável específico para plataforma |
| **Responsável** | Compilador ou tradutor |
| **Exemplos** | C, C++, Go, Rust |

---

### 🔄 Interpretação

> [!tip] Características

| Aspecto | Descrição |
|---------|-----------|
| **Processo** | Código fonte usado a cada execução |
| **Resultado** | Não gera executável separado |
| **Responsável** | Interpretador |
| **Exemplos** | Python, JavaScript, Ruby |

> [!success] Python
> O Python é uma linguagem **interpretada**. Linguagens interpretadas também são chamadas de **linguagens de scripting** e os códigos são geralmente chamados de **scripts**.

---

### 📊 Comparativo

![[Recursos/Programação/Conceitos gerais de programação/compilador-vs-interpretador-tabela.png|Vantagens e Desvantagens]]

> [!warning] Qual é melhor?
> Não existe melhor. Se existisse, o outro deixaria de ser utilizado. É uma questão de **objetivo do projeto**. Ambos têm vantagens e desvantagens.

📺 [Linguagem Compilada vs Interpretada | Qual é melhor?](https://www.youtube.com/watch?v=SNyh-cubxaU)

---

## 🧪 Exemplo Prático: Compilação vs Interpretação

### Linguagem Compilada (C)

**1. Criar arquivo C** (`hello.c`):

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

**2. Compilar:**

```bash
gcc hello.c -o hello
```

**3. Executar:**

```bash
./hello
```

---

### Linguagem Interpretada (Python)

**1. Criar arquivo Python** (`hello.py`):

```python
print("Olá, mundo!")
```

**2. Executar:**

```bash
python hello.py
```

> [!tip] Criando arquivo no Windows (PowerShell)
> 1. Abrir o PowerShell
> 2. Escolher uma pasta
> 3. `type nul > arquivo.py`
> 4. `notepad arquivo.py`
> 5. `python3 arquivo.py`
> 6. `Measure-Command {python3 arquivo.py}` (mede tempo de execução)

---

## 📖 Termos Importantes

> [!info] Biblioteca
> É um conjunto de subprogramas e funções que podem ser reutilizados em programas.

> [!info] API (Application Programming Interface)
> "Interface de Programação de Aplicativos" - parecido com biblioteca, mas focada na **integração entre sistemas**. Permite utilizar funcionalidades de outros sistemas no seu programa, chamando funções remotas.

