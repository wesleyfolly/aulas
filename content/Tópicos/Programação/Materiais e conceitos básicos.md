---
tipo: aula
resumo: "Conceitos fundamentais de Python: variáveis, tipos de dados, estruturas de controle, loops, funções e manipulação de arquivos."
tags:
  - aula
  - programacao
  - python
  - fundamentos
  - variaveis
  - funcoes
---

# Materiais e Conceitos Básicos

> [!quote] Base da Programação
> *Dominar os conceitos básicos é o primeiro passo para se tornar um programador competente.*

---

## 📋 Tópicos Abordados

- Características da linguagem
- Variáveis e tipos de dados
- Controles de fluxo
- Estruturas de repetição
- Estrutura de dados
- Funções
- Objetos
- Arquivos

---

## 📦 Variáveis e Tipos de Dados

> [!info] Conceito
> As variáveis permitem armazenar e atualizar dados em um programa. Você define um nome para essa variável e guarda algum valor nela.

```python
comida = "sorvete"
dinheiro = 2000
```

No exemplo acima, a variável `comida` armazena a string "sorvete", enquanto a variável `dinheiro` armazena o número 2000.

### Atualizando Variáveis

```python
idade = 30
idade = idade + 1
print(idade)  # Resultado: 31
```

---

### 🔢 Tipos de Dados

> [!tip] Principais Tipos

| Tipo | Descrição | Exemplo |
|------|-----------|---------|
| **String** | Combinações de caracteres | `"Olá"` |
| **Integer** | Números inteiros | `42` |
| **Float** | Números decimais | `3.14` |
| **Boolean** | Verdadeiro ou Falso | `True`, `False` |
| **List** | Coleção de dados | `[1, 2, 3]` |

---

## 🔀 Controles de Fluxo

> [!info] Operadores Lógicos
> Permitem fazer atribuições e comparações em testes condicionais.

| Operação | Operador | Exemplo |
|----------|----------|---------|
| Equivalência | `==` | `if x == 5` |
| Menor que | `<` | `if x < 5` |
| Menor ou igual | `<=` | `if x <= 5` |
| Maior que | `>` | `if x > 5` |
| Maior ou igual | `>=` | `if x >= 5` |

---

### Operadores Booleanos

| Operação | Operador | Descrição |
|----------|----------|-----------|
| **AND** | `and` | Ambas condições devem ser verdadeiras |
| **OR** | `or` | Uma condição precisa ser verdadeira |
| **NOT** | `not` | Inverte a condição |

```python
a = 1
if a == 1 or a > 10:
    print("a é 1 ou maior que 10")
```

---

### Instruções If

> [!tip] Estrutura Condicional
> Permite que o programa tome decisões baseadas em condições.

```python
if age < 17:
    print('Você NÃO tem idade suficiente para dirigir')
else:
    print('Você tem idade suficiente para dirigir')
```

**Componentes-chave:**
- `if` indica o início da instrução
- A condição é avaliada (ex: `age < 17`)
- `:` marca o fim da instrução
- O **recuo** define o bloco de código

---

## 🔄 Estruturas de Repetição

> [!info] Loops
> Permitem executar ações várias vezes. Existem dois tipos principais: `for` e `while`.

---

### While

> [!tip] Repetição Condicional
> Executa enquanto a condição for verdadeira.

```python
i = 1
while i <= 10:
    print(i)
    i = i + 1
```

**Funcionamento:**
1. Variável `i` é definida como 1
2. Loop executa enquanto `i <= 10`
3. A cada iteração, `i` aumenta em 1
4. Para quando `i > 10`

---

### For

> [!tip] Iteração em Sequências
> Usado para percorrer listas, strings ou ranges.

```python
websites = ["facebook.com", "google.com", "amazon.com"]
for site in websites:
    print(site)
```

**Com range:**

```python
for i in range(5):
    print(i)  # Imprime 0, 1, 2, 3, 4
```

> [!warning] Lembre-se
> Em programação, a contagem geralmente começa do 0!

🔗 [Python for Pentesters](https://tryhackme.com/room/pythonforcybersecurity) - Como usar Python para segurança

---

## ⚙️ Funções

> [!info] Conceito
> Funções são blocos de código reutilizáveis que organizam o programa e evitam repetição.

### Função Simples

```python
def mensagem():
    print("Olá, mundo")

mensagem()
```

### Função com Parâmetros e Retorno

```python
def calculadora_salario(valor_hora, horas_trabalhadas=160):
    return horas_trabalhadas * valor_hora

valor_total = calculadora_salario(40, 200)
print(valor_total)
```

---

### Exemplo Prático

```python
def sayHello(name):
    print("Hello " + name + "! Nice to meet you.")

sayHello("Ben")  # Output: Hello Ben! Nice to meet you.
```

**Componentes:**
- `def` indica início da função
- Nome da função (ex: `sayHello`)
- Parênteses `()` com parâmetros
- `:` marca o fim do cabeçalho
- Bloco recuado é o corpo da função

---

### Função com Retorno

```python
def calcCost(item):
    if item == "sweets":
        return 3.99
    elif item == "oranges":
        return 1.99
    else:
        return 0.99

spent = 10
spent = spent + calcCost("sweets")
print("Você gastou: " + str(spent))
```

---

## 📁 Manipulação de Arquivos

> [!info] Conceito
> Python permite ler e escrever arquivos, útil para persistência de dados.

### Leitura de Arquivo

```python
f = open("file_name", "r")
print(f.read())
```

| Modo | Descrição |
|------|-----------|
| `"r"` | Leitura (read) |
| `"a"` | Anexar (append) |
| `"w"` | Escrita (write) |

---

### Escrita em Arquivos

```python
# Anexar a arquivo existente
f = open("demofile1.txt", "a")
f.write("O arquivo terá mais texto...")
f.close()

# Criar e escrever novo arquivo
f = open("demofile2.txt", "w")
f.write("Arquivo demofile2 criado com este conteúdo!")
f.close()
```

> [!warning] Importante
> Sempre use `close()` após gravar em um arquivo para finalizar a operação.

---

## 📚 Materiais de Apoio

### Apostilas

![[Recursos/Programação/Python/Materiais e conceitos básicos/apostila-python-orientacao-a-objetos.pdf|Apostila POO Python]]

### Vídeos

📺 [MELHOR FORMA DE APRENDER PYTHON (Google Colab Notebook)](https://www.youtube.com/watch?v=Gojqw9BQ5qY&list=PLMdYygf53DP7YZiFUtGTWJJlvynRyrna-&index=2)

🔗 [Welcome to Python.org](https://www.python.org/)

---

## 🧩 Boas Práticas

> [!success] Dicas
> - Use nomes descritivos para variáveis
> - Mantenha funções pequenas e focadas
> - Comente código complexo
> - Siga a PEP 8 (guia de estilo Python)

**Veja também:** [[Armazenamento de senhas]]
