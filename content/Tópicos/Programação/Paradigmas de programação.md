---
tipo: aula
resumo: "Paradigmas de programação: imperativo vs declarativo, programação estruturada, procedural, orientada a objetos, funcional e lógica."
tags:
  - aula
  - programacao
  - paradigmas
  - poo
  - funcional
---

# Paradigmas de Programação

> [!quote] Modelos de Resolução
> *Paradigma de programação é um meio de se **classificar** as linguagens de programação baseado em suas funcionalidades.*

---

## 🎯 O que são Paradigmas?

> [!success] Definição Simples
> **Um paradigma é um molde ou modelo para se resolver um problema.**

📺 [Os Paradigmas da Programação | Explicados](https://www.youtube.com/watch?v=7R6CIDND87Y)

---

## 🌳 Os Dois Grandes Grupos

![[Recursos/Programação/Paradigmas de programação/arvore-paradigmas-programacao.png|Árvore de Paradigmas]]

> [!tip] Multiparadigma
> Uma linguagem pode se encaixar em **um ou mais** paradigmas. A maior parte das linguagens que usamos no dia a dia são multiparadigma.

> [!warning] Importante
> Alguns paradigmas são **modificações** ou **evoluções** de outros, ou seja, não são coisas completamente separadas.

---

## ⚖️ Imperativa vs Declarativa: Diferença Prática

### Programação Imperativa

Você diz **como** algo deve ser feito, passo a passo.

```python
numeros = [1, 2, 3, 4, 5]
soma = 0
for numero in numeros:
    soma += numero
print(soma)
```

### Programação Declarativa

Você diz **o que** quer, e o sistema cuida de **como** fazer.

```python
numeros = [1, 2, 3, 4, 5]
soma = sum(numeros)
print(soma)
```

| Aspecto | Imperativa | Declarativa |
|---------|------------|-------------|
| **Foco** | Como fazer | O que fazer |
| **Controle** | Detalhado | Abstrato |

---

# 1. Programação Imperativa

> [!success] Conceito
> Programas imperativos são uma sequência de comandos para o computador executar.

O nome paradigma **Imperativo** está ligado ao tempo verbal imperativo, onde o programador diz ao computador: faça isso, depois isso, depois aquilo...

Este paradigma se destaca pela simplicidade, uma vez que todo ser humano, ao se programar, o faz imperativamente, baseado na ideia de ações e estados.

---

## 📋 Elementos da Programação Imperativa

- Definição de tipos de dados
- Expressões e atribuições
- Estruturas de controle de fluxo (programação estruturada)
- Definição de sub-rotinas (programação procedimental)

---

## ✅ Vantagens

| Vantagem | Descrição |
|----------|-----------|
| **Eficiência** | Embute o modelo Von Neumann |
| **Dominante** | Paradigma bem estabelecido |
| **Natural** | Modelagem natural de aplicações do mundo real |
| **Flexibilidade** | Tipagem fraca e muito flexível |
| **Acessível** | Fácil de entender, usada em cursos introdutórios |

---

### 🖥️ Arquitetura de Von Neumann

📺 [O gênio que revolucionou a COMPUTAÇÃO](https://www.youtube.com/watch?v=DhodsmIm3LE)

> [!info] Ideia Central
> Von Neumann pensou o computador como uma máquina que **guarda dados e instruções no mesmo lugar (memória)**.

**Componentes principais:**

1. **Memória** → onde ficam guardados tanto os dados quanto o programa
2. **CPU** dividida em:
   - **ULA** (Unidade Lógica e Aritmética) → faz cálculos e comparações
   - **UC** (Unidade de Controle) → interpreta as instruções
3. **Dispositivos de Entrada e Saída** → teclado, mouse, monitor, etc.

![[Recursos/Programação/Paradigmas de programação/arquitetura-von-neumann-harvard.png|Arquitetura Von Neumann vs Harvard]]

> [!tip] Analogia
> A arquitetura de von Neumann é como uma cozinha onde **a receita (programa)** e **os ingredientes (dados)** ficam guardados no mesmo armário (memória), e o **chefe (CPU)** busca, interpreta e executa passo a passo.

---

### 📝 Tipagem Fraca

> [!info] O que é?
> Tipagem fraca permite que operações sejam realizadas em variáveis de tipos diferentes sem conversão explícita.

| Aspecto | Descrição |
|---------|-----------|
| **Flexibilidade** | Mais fácil de escrever código |
| **Exemplo** | Em JavaScript, `"5" + 3` resulta em `"53"` |
| **Riscos** | Problemas de depuração, comportamento imprevisível |
| **Linguagens** | JavaScript, PHP, Python |

---

## ❌ Desvantagens

- Difícil legibilidade
- Focaliza o "como" e não o "quê"
- Relacionamento indireto com E/S (indução a erros/estados)
- Tende a gerar códigos confusos quando a "gambiarra" toma conta

---

## 💻 Linguagens Imperativas

Ada, ALGOL, Basic, C, PHP, Java, Cobol, Fortran, Pascal, Python, Lua, Mathematica

---

# 1.1 Programação Estruturada

A programação estruturada surge como forma de dar maior controle sobre o fluxo de execução.

> [!info] História
> Desenvolvida por Michael A. Jackson em "Principles of Program Design" de **1975**.

---

## 🔄 As 3 Estruturas Fundamentais

![[Recursos/Programação/Paradigmas de programação/fluxograma-sequencia-decisao-repeticao.png|Sequência, Decisão e Repetição]]

| Estrutura | Descrição |
|-----------|-----------|
| **Sequência** | Tarefas executadas linearmente |
| **Decisão** | Teste lógico determina execução |
| **Iteração** | Trecho repetido por número finito de vezes |

---

### Exemplo Prático

```python
import requests

# Sequência: requisita a cotação
url = "https://api.exchangerate-api.com/v4/latest/USD"
response = requests.get(url)

# Seleção: verifica se a resposta foi bem-sucedida
if response.status_code == 200:
    data = response.json()
    # Sequência: pega a cotação do dólar em relação ao Real
    dolar_brl = data["rates"]["BRL"]
    print("Cotação do dólar em reais:", dolar_brl)
else:
    print("Erro ao acessar a API.")
```

---

# 1.2 Programação Procedural (ou Modular)

A Programação Procedural é um dos paradigmas mais antigos e fundamentais.

> [!success] Conceito
> Procedimentos (funções/rotinas) são blocos de códigos que realizam tarefas específicas, permitindo decompor tarefas complexas em sub-tarefas menores.

---

## 📋 Características Principais

| Característica | Descrição |
|----------------|-----------|
| **Procedimentos** | Blocos de código para tarefas específicas |
| **Fluxo Sequencial** | Execução de cima para baixo |
| **Escopo** | Variáveis com visibilidade limitada |
| **Modularidade** | Divisão em partes menores e testáveis |

---

### Vantagens e Desvantagens

| Vantagens | Desvantagens |
|-----------|--------------|
| Simplicidade para aplicações menos complexas | Escalabilidade difícil para sistemas maiores |
| Eficiência em memória e tempo | Reutilização desafiadora |
| Facilidade de depuração | Efeitos colaterais possíveis |

---

### Exemplo Prático

```python
import requests

def buscar_cotacoes(base="USD"):
    """Busca as cotações a partir de uma moeda base"""
    url = f"https://api.exchangerate-api.com/v4/latest/{base}"
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def pegar_cotacao(data, moeda="BRL"):
    """Extrai a cotação de uma moeda específica"""
    if data and "rates" in data:
        return data["rates"].get(moeda, None)
    return None

def exibir_cotacao(valor, moeda="BRL"):
    """Mostra a cotação formatada"""
    if valor:
        print(f"Cotação do dólar em {moeda}: {valor}")
    else:
        print("Não foi possível obter a cotação.")

# Programa principal (procedural)
dados = buscar_cotacoes("USD")
cotacao_brl = pegar_cotacao(dados, "BRL")
exibir_cotacao(cotacao_brl, "BRL")
```

---

# 1.3 Programação Orientada a Objetos (POO)

📺 [Programação Orientada a Objetos | Explicação Simples](https://www.youtube.com/watch?v=pbb0jzXt_xA)

> [!success] Conceito
> Paradigma baseado em "objetos" que representam entidades do mundo real, contendo dados (atributos) e comportamentos (métodos).

---

## 🧱 Objetos e Classes

| Conceito | Descrição |
|----------|-----------|
| **Objeto** | Instância de uma classe com estado e comportamento |
| **Classe** | Blueprint/definição a partir da qual objetos são criados |

---

### Exemplos de Classes

**Classe Carro:**
- **Objetos**: Toyota Corolla, Volkswagen Golf, Ford Mustang
- **Atributos**: Cor, Modelo, Ano, Velocidade máxima
- **Métodos**: Acelerar, Frear, Ligar faróis, Buzinar

**Classe ContaBancaria:**
- **Objetos**: Conta de João, Conta de Maria
- **Atributos**: Número da conta, Titular, Saldo
- **Métodos**: Depositar, Sacar, Transferir, Ver saldo

---

## 🔑 Pilares da POO

| Pilar | Descrição |
|-------|-----------|
| **Encapsulamento** | Dados privados, acessados por métodos |
| **Herança** | Classe filha herda da classe mãe |
| **Polimorfismo** | Objetos diferentes com interface comum |
| **Abstração** | Foco nas características essenciais |

---

### Vantagens e Desvantagens

| Vantagens | Desvantagens |
|-----------|--------------|
| Reusabilidade via herança e polimorfismo | Complexidade adicional |
| Manutenção facilitada pelo encapsulamento | Pode ser menos eficiente |
| Modelagem intuitiva do mundo real | Programas podem ficar extensos |

---

### Exemplo Prático

```python
import requests

class Cambio:
    def __init__(self, base="USD"):
        self.base = base
        self.rates = {}

    def atualizar(self):
        url = f"https://api.exchangerate-api.com/v4/latest/{self.base}"
        self.rates = requests.get(url).json()["rates"]

    def cotacao(self, moeda="BRL"):
        return self.rates.get(moeda)

# Uso
c = Cambio()
c.atualizar()
print("Cotação do dólar em reais:", c.cotacao("BRL"))
```

---

# 2. Programação Declarativa

> [!success] Conceito
> No paradigma declarativo o programador não diz COMO o programa deve agir e sim O QUE ele deve retornar.

SQL é um exemplo clássico: você passa o que quer, e o banco de dados decide a melhor forma de trazer os dados.

> [!tip] Dica
> É possível escrever de forma declarativa usando linguagens imperativas, utilizando encapsulamento para esconder detalhes de implementação.

---

# 2.1 Programação Funcional

> [!success] Conceito
> Trata a computação como avaliação de **funções matemáticas**, evitando estados ou dados **mutáveis**.

**Exemplo matemático:**

$$f(x) = x^2 + 2$$

---

## 💻 Linguagens Funcionais

Erlang, Haskell, Lisp, Clojure, JavaScript (multiparadigma), Python (multiparadigma)

> [!info] Característica
> Em programação estritamente funcional, não há alocação explícita de **memória** nem **declaração explícita de variáveis**.

📺 [Programação Funcional | Dicionário do Programador](https://www.youtube.com/watch?v=BxbHGPivjdc)

---

# 2.2 Programação Lógica

> [!success] Conceito
> Paradigma baseado em formalismos da lógica matemática, onde programas são escritos em termos de **relações** e **regras**.

---

## 📋 Características Principais

| Característica | Descrição |
|----------------|-----------|
| **Declaratividade** | Declara conhecimento e consultas |
| **Backtracking** | Busca automática de soluções |
| **Recursão** | Conceito fundamental |
| **Unificação** | Correspondência automática de variáveis |

---

### Exemplo em Prolog

```prolog
% Fatos representando relações parentais
parent(ana, bruno).
parent(paulo, bruno).
parent(bruno, carlos).
parent(bruno, diana).

% Regra para determinar avô/avó
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Regra para determinar irmãos
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Consulta: Quem é o avô/avó de Carlos?
% ?- grandparent(X, carlos).
```

**Linguagens lógicas:** Prolog, Mercury

---

## 📝 Observações Finais

### Diferença entre Procedimento e Função

| Tipo | Descrição |
|------|-----------|
| **Procedimento** | **Não retorna** valor |
| **Função** | **Gera um resultado** que pode ser utilizado pelo programa |

---

## 📚 Materiais Complementares

📺 [Paradigmas de Linguagem de Programação](https://www.youtube.com/playlist?list=PL8lS5-l2_3cfYaFDK_zBCZQo70h4orszf)

