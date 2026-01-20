# Introdução à programação com python

# **🐍 Introdução à Programação**

> Fundamentos essenciais para iniciar na programação.
> 

---

# **01 — Introdução**

Programar é criar instruções que o computador executa. Python é simples, moderno e ideal para iniciantes, permitindo construir soluções de forma clara e rápida.

**Exemplo:**

```python
print("Olá, mundo!")
```

---

# **02 — Entrada e Saída, Variáveis e Tipos**

Entrada e saída permitem conversar com o usuário. Variáveis guardam dados e os tipos definem como o Python entende esses valores (texto, número, lógico).

**Exemplo:**

```python
nome = input("Seu nome: ")
idade = int(input("Sua idade: "))
print(f"{nome} tem {idade} anos.")
```

---

# **03 — Estrutura Condicional**

Condições decidem caminhos diferentes dentro do programa com if, elif e else.

Essencial para regras, permissões, validações e escolhas automáticas.

**Exemplo:**

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

# **04 — Operadores Lógicos**

Operadores lógicos (and, or, not) criam regras mais complexas e combinam condições.

Muito usados em login, validações e filtros de dados.

**Exemplo:**

```python
email = "admin"
senha = "123"

if email == "admin" and senha == "123":
    print("Acesso liberado")
```

---

# **05 — Estruturas de Repetição (While)**

O while repete um bloco enquanto uma condição é verdadeira.

Ótimo para menus, validações e rotinas contínuas.

**Exemplo:**

```python
x = 1
while x <= 5:
    print(x)
    x += 1
```

---

# **06 — Listas e For**

Listas guardam vários dados e o for percorre esses valores.

É o coração de programas que processam coleções de itens.

**Exemplo:**

```python
nomes = ["Ana", "João", "Pedro"]

for nome in nomes:
    print(nome)
```

---

# **07 — Dicionários**

Dicionários funcionam como um “mini banco de dados” interno: cada valor tem uma chave.

Perfeito para representar objetos do mundo real.

**Exemplo:**

```python
aluno = {
    "nome": "Maria",
    "idade": 17,
    "nota": 9
}

print(aluno["nome"])
```

---

# **08 — Funções**

Funções organizam o código, evitam repetição e deixam tudo mais limpo.

Elas podem receber valores, processar algo e devolver resultados.

**Exemplo:**

```python
def soma(a, b):
    return a + b

print(soma(5, 3))
```

---

# **09 — Python + MySQL**

Python pode se conectar a bancos de dados e executar comandos SQL.

Isso permite criar sistemas reais com persistência de dados.

**Exemplo:**

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

# **10 — Manipulação de Arquivos**

Salvar informações em arquivos permite persistência dos dados.

Usamos open() para criar, ler e escrever.

**Exemplo:**

```python
with open("dados.txt", "w") as arq:
    arq.write("Primeira linha!")
```

---

# **11 — Acesso a APIs**

APIs permitem trazer dados da internet para o programa.

Com requests, é possível consumir serviços externos via HTTP.

**Exemplo:**

```python
import requests

res = requests.get("https://api.github.com")
print(res.json())
```

---

# **📝 Lisata de Exercícios**

## **1. Variáveis e Entrada**

Crie um programa que pergunta **nome**, **idade** e **profissão** e exibe tudo organizado.

## **2. Condicionais**

Receba a velocidade de um carro e exiba:

- “Dentro do limite”
- “Acima do limite”
- “Multa grave”

## **3. Operadores Lógicos**

Simule login com **usuário**, **senha** e uma validação de idade (≥18).

## **4. While**

Crie um menu:

- 1 → Mostrar “Olá”
- 2 → Somar dois números
- 0 → Sair
    
    O programa só termina com 0.
    

## **5. Listas**

Peça 5 números, coloque numa lista e exiba apenas os maiores que 100.

## **6. Dicionários**

Crie um dicionário de produto com nome, preco, estoque e imprima tudo.

## **7. Funções**

Crie uma função que recebe um número e retorna se ele é **par** ou **ímpar**.

## **8. Arquivos**

Crie um programa que recebe um texto e salva em anotacao.txt.

## **9. API**

Consuma a API https://yesno.wtf/api e mostre a resposta na tela.

## **10. Projeto Final**

Monte um mini sistema que:

- recebe dados do usuário
- armazena em lista
- salva em arquivo
- e depois exibe um relatório final

---