---
tipo: aula
resumo: "Roteiro completo de introdução à programação com Python: variáveis, condicionais, loops, funções, arquivos e APIs."
tags:
  - aula
  - programacao
  - python
  - introducao
  - fundamentos
---

# Introdução à Programação com Python

> [!quote] Fundamentos Essenciais
> *Programar é criar instruções que o computador executa. Python é simples, moderno e ideal para iniciantes.*

---

## 🐍 01 — Introdução

Python permite construir soluções de forma clara e rápida.

```python
print("Olá, mundo!")
```

---

## 📥 02 — Entrada e Saída, Variáveis e Tipos

> [!info] Conceito
> Entrada e saída permitem conversar com o usuário. Variáveis guardam dados e os tipos definem como o Python entende esses valores.

```python
nome = input("Seu nome: ")
idade = int(input("Sua idade: "))
print(f"{nome} tem {idade} anos.")
```

---

## 🔀 03 — Estrutura Condicional

> [!info] Conceito
> Condições decidem caminhos diferentes com `if`, `elif` e `else`. Essencial para regras, permissões e validações.

```python
nota = float(input("Nota: "))

if nota >= 7:
    print("Aprovado")
elif nota >= 5:
    print("Recuperação")
else:
    print("Reprovado")
```

---

## 🔗 04 — Operadores Lógicos

> [!info] Conceito
> Operadores `and`, `or`, `not` criam regras mais complexas. Muito usados em login e filtros.

```python
email = "admin"
senha = "123"

if email == "admin" and senha == "123":
    print("Acesso liberado")
```

---

## 🔄 05 — Estruturas de Repetição (While)

> [!info] Conceito
> O `while` repete enquanto uma condição é verdadeira. Ótimo para menus e rotinas contínuas.

```python
x = 1
while x <= 5:
    print(x)
    x += 1
```

---

## 📋 06 — Listas e For

> [!info] Conceito
> Listas guardam vários dados e o `for` percorre esses valores.

```python
nomes = ["Ana", "João", "Pedro"]

for nome in nomes:
    print(nome)
```

---

## 📖 07 — Dicionários

> [!info] Conceito
> Dicionários funcionam como um "mini banco de dados": cada valor tem uma chave.

```python
aluno = {
    "nome": "Maria",
    "idade": 17,
    "nota": 9
}

print(aluno["nome"])
```

---

## ⚙️ 08 — Funções

> [!info] Conceito
> Funções organizam o código, evitam repetição e deixam tudo mais limpo.

```python
def soma(a, b):
    return a + b

print(soma(5, 3))
```

---

## 🗄️ 09 — Python + MySQL

> [!info] Conceito
> Python pode se conectar a bancos de dados e executar comandos SQL.

```python
import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234"
)

print("Conectado ao MySQL!")
```

---

## 📁 10 — Manipulação de Arquivos

> [!info] Conceito
> Salvar informações em arquivos permite persistência dos dados.

```python
with open("dados.txt", "w") as arq:
    arq.write("Primeira linha!")
```

---

## 🌐 11 — Acesso a APIs

> [!info] Conceito
> APIs permitem trazer dados da internet para o programa.

```python
import requests

res = requests.get("https://api.github.com")
print(res.json())
```

---

## 📝 Lista de Exercícios

### 1. Variáveis e Entrada

Crie um programa que pergunta **nome**, **idade** e **profissão** e exibe tudo organizado.

### 2. Condicionais

Receba a velocidade de um carro e exiba: "Dentro do limite", "Acima do limite" ou "Multa grave".

### 3. Operadores Lógicos

Simule login com **usuário**, **senha** e validação de idade (≥18).

### 4. While

Crie um menu: 1 → Mostrar "Olá", 2 → Somar dois números, 0 → Sair.

### 5. Listas

Peça 5 números, coloque numa lista e exiba apenas os maiores que 100.

### 6. Dicionários

Crie um dicionário de produto com nome, preço, estoque e imprima tudo.

### 7. Funções

Crie uma função que recebe um número e retorna se é **par** ou **ímpar**.

### 8. Arquivos

Crie um programa que recebe um texto e salva em `anotacao.txt`.

### 9. API

Consuma a API `https://yesno.wtf/api` e mostre a resposta na tela.

### 10. Projeto Final

Monte um mini sistema que: recebe dados do usuário, armazena em lista, salva em arquivo e exibe um relatório final.

