---
tipo: aula
resumo: "Estruturas de dados clássicas e em Python: vetor, lista, pilha, fila, árvore, além de conceitos avançados como ponteiros, recursividade, algoritmos de busca/ordenação e grafos."
tags:
  - aula
  - programacao
  - estrutura-de-dados
  - python
  - c
  - algoritmos
---

# Estrutura de Dados

> [!quote] Organização de Dados
> *Estruturas de dados são formas de organizar **conjuntos** de dados na programação, assim como as **operações** nesses conjuntos.*

---

## 📚 Roteiro de Estudo

1. Aprender o que são estruturas de dados
2. Aprender as principais estruturas de dados independente de linguagem
3. Como usar estruturas de dados em Python
4. Como usar estruturas de dados em C
5. Projeto prático e real de programação usando estruturas de dados
6. Conceitos avançados: Estruturas Homogêneas/Heterogêneas, Ponteiros, Recursividade, Algoritmos de Pesquisa/Ordenação, Grafos

> [!info] Avaliação
> Prova escrita valendo 6 pontos e trabalho valendo 4 pontos

---

## 🗂️ Principais Estruturas de Dados

---

### 1. Vetor

> [!info] Conceito
> Um vetor é uma coleção de elementos armazenados de forma contínua, onde todos os elementos são do mesmo tipo e cada posição tem um "endereço" que permite acesso direto.

**Exemplo do Mundo Real:** Imagine uma prateleira com uma fileira de livros. Cada espaço representa uma posição, e para pegar um livro específico, basta saber o número da posição.

---

### 2. Lista (ou Lista Encadeada)

> [!info] Conceito
> Uma lista encadeada é uma sequência de elementos conectados, onde cada elemento "aponta" para o próximo. Os elementos não precisam estar próximos na memória.

**Exemplo do Mundo Real:** Pense em um trem com vários vagões. Cada vagão está ligado ao próximo por um engate. Para acessar um vagão no meio, você precisa começar pelo primeiro.

---

### 3. Pilha

> [!info] Conceito
> Uma pilha funciona no modelo **LIFO** (Last In, First Out) - o último elemento que entra é o primeiro a sair.

**Exemplo do Mundo Real:** Uma pilha de livros. Quando você coloca um livro em cima, ele é o primeiro a sair.

---

### 4. Fila

> [!info] Conceito
> Uma fila segue o modelo **FIFO** (First In, First Out) - o primeiro elemento que entra é o primeiro a sair.

**Exemplo do Mundo Real:** Fila para entrar no cinema. A primeira pessoa é a primeira a entrar.

---

### 5. Árvore

> [!info] Conceito
> Uma árvore é uma estrutura hierárquica onde cada elemento (nó) pode ter vários "filhos". Começa com um nó raiz e se ramifica.

**Exemplos do Mundo Real:**
- Árvore Genealógica
- Sistema de Arquivos
- Hierarquia Organizacional

---

## 🐍 Estruturas de Dados em Python

🔗 [Principais Estruturas de Dados no Python](https://www.treinaweb.com.br/blog/principais-estruturas-de-dados-no-python)

---

### 1. Listas

> [!tip] Características
> Coleções ordenadas e **mutáveis** que permitem armazenar diferentes tipos de dados.

| Método | Descrição |
|--------|-----------|
| `append()` | Adiciona item ao final |
| `remove()` | Remove primeiro item igual |
| `sort()` | Ordena a lista |

```python
frutas = ["maçã", "banana", "laranja"]
frutas.append("uva")
frutas.remove("banana")
frutas.sort()
print(frutas)  # Output: ['laranja', 'maçã', 'uva']
```

---

### 2. Tupla

> [!tip] Características
> Coleções ordenadas e **imutáveis**. Definidas com parênteses `()`.

```python
cores = ("vermelho", "verde", "azul")
print(cores[1])  # Output: verde
# cores[1] = "amarelo"  # Erro: Tuplas são imutáveis
```

---

### 3. Sets

> [!tip] Características
> Coleções **desordenadas** e **sem duplicatas**. Úteis para operações de conjuntos.

| Método | Descrição |
|--------|-----------|
| `add()` | Adiciona item |
| `remove()` | Remove item |
| `union()` | União de sets |

```python
linguagens = {"Python", "Java", "C++"}
linguagens.add("Ruby")
linguagens.add("Python")  # Não será adicionado novamente
print(linguagens)  # Output: {'Python', 'Ruby', 'Java', 'C++'}
```

---

### 4. Dicionário

> [!tip] Características
> Coleções de pares **chave-valor**. Úteis para dados identificados por chave.

| Método | Descrição |
|--------|-----------|
| `get()` | Retorna valor da chave |
| `pop()` | Remove item |
| `keys()` | Retorna todas as chaves |

```python
aluno = {"nome": "Ana", "idade": 20, "curso": "Engenharia"}
print(aluno["nome"])  # Output: Ana
aluno["idade"] = 21
aluno.pop("curso")
print(aluno)  # Output: {'nome': 'Ana', 'idade': 21}
```

---

## 🔗 Relação: Python vs Estruturas Clássicas

| Estrutura Clássica | Equivalente em Python |
|--------------------|----------------------|
| Vetor | `list` (array dinâmico) |
| Lista Encadeada | Classes personalizadas |
| Pilha | `list` com `append()`/`pop()` ou `deque` |
| Fila | `collections.deque` |
| Árvore | Classes personalizadas ou `binarytree` |

---

### Implementação de Pilha em Python

```python
pilha = []
pilha.append(1)  # Empilha 1
pilha.append(2)  # Empilha 2
pilha.pop()      # Remove 2 (topo)
print(pilha)     # Output: [1]
```

---

### Implementação de Fila em Python

```python
from collections import deque

fila = deque()
fila.append(1)   # Adiciona na fila
fila.append(2)
fila.popleft()   # Remove o primeiro (1)
print(fila)      # Output: deque([2])
```

---

### Implementação de Lista Encadeada em Python

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def add(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

lista_encadeada = LinkedList()
lista_encadeada.add(1)
lista_encadeada.add(2)
```

---

### Implementação de Árvore em Python

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

root = Node(10)
root.left = Node(5)
root.right = Node(15)
```

---

## 📘 Conceitos Avançados

---

### 1. Estruturas de Dados Homogêneas

> [!info] Conceito
> Armazenam elementos do **mesmo tipo de dado**. Ideais quando todos os dados seguem o mesmo formato.

**Exemplos:** Vetores (arrays), Matrizes

**Aplicações:** Listas de números, Tabelas de notas

```c
#include <stdio.h>

int main() {
    int numeros[5] = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++) {
        printf("Elemento %d: %d\n", i, numeros[i]);
    }
    return 0;
}
```

---

### 2. Estruturas de Dados Heterogêneas

> [!info] Conceito
> Armazenam **diferentes tipos de dados**. Úteis para representar entidades com múltiplas características.

**Exemplo:** `struct` em C

**Aplicações:** Cadastro de alunos (nome, idade, nota)

```c
#include <stdio.h>

struct Aluno {
    char nome[50];
    int idade;
    float nota;
};

int main() {
    struct Aluno a1 = {"Maria", 17, 8.5};
    printf("Nome: %s\nIdade: %d\nNota: %.2f\n", a1.nome, a1.idade, a1.nota);
    return 0;
}
```

---

### 3. Ponteiros

> [!info] Conceito
> Variáveis que armazenam o **endereço de memória** de outra variável.

**Aplicações:**
- Acesso eficiente a arrays
- Alocação dinâmica de memória
- Estruturas ligadas (listas, árvores)

```c
#include <stdio.h>

int main() {
    int x = 10;
    int *p = &x;
    printf("Valor de x: %d\n", x);
    printf("Endereco de x: %p\n", p);
    printf("Valor apontado por p: %d\n", *p);
    return 0;
}
```

---

### 4. Recursividade

> [!info] Conceito
> Ocorre quando uma função **chama a si mesma** para resolver subproblemas menores.

**Aplicações:** Fatorial, Fibonacci, Árvores, Busca em profundidade

```c
#include <stdio.h>

int fatorial(int n) {
    if (n <= 1) return 1;
    return n * fatorial(n - 1);
}

int main() {
    int resultado = fatorial(5);
    printf("Fatorial de 5: %d\n", resultado);
    return 0;
}
```

---

### 5. Algoritmos de Pesquisa e Ordenação

> [!info] Tipos de Pesquisa

| Algoritmo | Descrição |
|-----------|-----------|
| **Pesquisa Linear** | Percorre todos os elementos |
| **Pesquisa Binária** | Requer vetor ordenado |

> [!info] Tipos de Ordenação

| Algoritmo | Descrição |
|-----------|-----------|
| **Ordenação por Seleção** | Encontra o menor e coloca no início |
| **Bubble Sort** | Troca elementos vizinhos fora de ordem |

#### Pesquisa Linear

```c
int buscaLinear(int v[], int tamanho, int chave) {
    for (int i = 0; i < tamanho; i++) {
        if (v[i] == chave) return i;
    }
    return -1;
}
```

#### Pesquisa Binária

```c
int buscaBinaria(int v[], int inicio, int fim, int chave) {
    while (inicio <= fim) {
        int meio = (inicio + fim) / 2;
        if (v[meio] == chave) return meio;
        else if (chave < v[meio]) fim = meio - 1;
        else inicio = meio + 1;
    }
    return -1;
}
```

#### Bubble Sort

```c
void bubbleSort(int v[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (v[j] > v[j + 1]) {
                int temp = v[j];
                v[j] = v[j + 1];
                v[j + 1] = temp;
            }
        }
    }
}
```

---

### 6. Grafos

> [!info] Conceito
> Um **grafo** é um conjunto de **vértices (nós)** conectados por **arestas (ligações)**.

| Tipo | Descrição |
|------|-----------|
| **Dirigido** | Com direção |
| **Não-dirigido** | Sem direção |
| **Ponderado** | Com peso nas arestas |

**Aplicações:** Mapas de cidades, Redes sociais, Roteamento na internet

#### Matriz de Adjacência

```c
#include <stdio.h>

#define V 4

void printGrafo(int grafo[V][V]) {
    for (int i = 0; i < V; i++) {
        for (int j = 0; j < V; j++) {
            printf("%d ", grafo[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int grafo[V][V] = {
        {0, 1, 0, 0},
        {1, 0, 1, 1},
        {0, 1, 0, 1},
        {0, 1, 1, 0}
    };

    printGrafo(grafo);
    return 0;
}
```

---

## ✅ Sugestões de Estudo

> [!success] Dicas
> - Refaça os códigos manualmente
> - Tente implementar usando alocação dinâmica
> - Crie pequenos projetos aplicando múltiplos conceitos
> - Resolva exercícios de lógica com ponteiros e recursão
> - Use IA para criar questões e testar seu conhecimento

---

## 📝 Lista de Exercícios

### Questões 1-10

**1. (Vetor)** Em relação a vetores, assinale a alternativa correta:

a) Permitem armazenar elementos de tipos diferentes.
b) Os elementos são armazenados de forma não contígua na memória.
c) Permitem acesso direto aos elementos por índice.
d) Não possuem tamanho fixo em linguagens como C.
e) Sempre funcionam como listas encadeadas.

---

**2. (Lista Encadeada)** Qual das alternativas descreve corretamente uma lista encadeada?

a) Estrutura homogênea que exige alocação contígua na memória.
b) Cada elemento aponta para o próximo, sem necessidade de estarem lado a lado na memória.
c) Estrutura LIFO utilizada para empilhar dados.
d) Organização hierárquica com um nó raiz e nós filhos.
e) Armazena sempre dados do mesmo tipo.

---

**3. (Pilha)** Sobre o funcionamento de uma pilha, é correto afirmar que:

a) O primeiro elemento inserido é o primeiro a ser retirado.
b) O último elemento inserido é o primeiro a ser retirado.
c) Não é possível remover elementos de uma pilha.
d) Pilhas são usadas apenas em cálculos matemáticos.
e) É uma estrutura exclusiva de linguagens orientadas a objetos.

---

**4. (Fila)** Uma fila segue qual política de acesso?

a) LIFO – Last In, First Out.
b) FIFO – First In, First Out.
c) FILO – First In, Last Out.
d) ALEATÓRIA – Ordem de prioridade definida pelo programador.
e) BINÁRIA – Ordem determinada por comparação de valores.

---

**5. (Árvore)** Na estrutura de dados árvore, o elemento que não possui pai é chamado de:

a) Nó folha.
b) Nó interno.
c) Raiz.
d) Subnó.
e) Galho.

---

**6. (Python – Lista)** No Python, qual método é usado para adicionar um elemento ao final de uma lista?

a) add()
b) insert()
c) append()
d) push()
e) extend()

---

**7. (Python – Tupla)** Sobre tuplas no Python, assinale a alternativa correta:

a) São mutáveis e permitem adição de novos elementos.
b) São imutáveis e definidas com parênteses.
c) São semelhantes a listas, mas armazenam apenas strings.
d) São coleções desordenadas sem elementos duplicados.
e) Podem ser alteradas usando o método update().

---

**8. (Conceitos – Ponteiros)** Em C, um ponteiro armazena:

a) Um tipo de dado inteiro que representa um índice.
b) O endereço de memória de outra variável.
c) Apenas endereços de variáveis inteiras.
d) Sempre um valor fixo definido em tempo de compilação.
e) Um vetor de valores contínuos.

---

**9. (Pesquisa Binária)** Para aplicar a pesquisa binária em um vetor, é necessário que:

a) O vetor esteja ordenado.
b) O vetor tenha elementos únicos.
c) O vetor seja armazenado em forma de árvore.
d) Seja utilizada recursividade obrigatoriamente.
e) O vetor tenha apenas números inteiros.

---

**10. (Grafos)** Um grafo ponderado é aquele em que:

a) Todos os nós possuem o mesmo grau.
b) Cada aresta possui um peso associado.
c) Não existe direção nas arestas.
d) Os vértices estão organizados em níveis hierárquicos.
e) Cada nó está conectado a todos os outros.

> [!success] Gabarito 1-10
> 1. c | 2. b | 3. b | 4. b | 5. c | 6. c | 7. b | 8. b | 9. a | 10. b

---

### Questões 11-15

**11. (Vetor x Lista Encadeada)** Qual é a principal vantagem de uma lista encadeada em relação a um vetor em C?

a) Permite acesso direto a qualquer elemento pelo índice.
b) Utiliza menos memória em todos os casos.
c) Inserções e remoções no início não exigem deslocamento de elementos.
d) Sempre armazena elementos do mesmo tipo.
e) Ordena os elementos automaticamente.

---

**12. (Fila de Prioridade)** Uma fila de prioridade difere de uma fila comum porque:

a) Os elementos são atendidos pela ordem de chegada.
b) Cada elemento é atendido de acordo com um peso ou prioridade.
c) Apenas números inteiros podem ser armazenados.
d) Utiliza sempre uma estrutura de pilha.
e) Não permite remoção de elementos.

---

**13. (Python – Sets)** Considere o código:

```python
dados = {1, 2, 3}
dados.add(2)
print(dados)
```

O que será impresso?

a) {1, 2, 3, 2}
b) {1, 2, 3}
c) [1, 2, 3]
d) {2, 3}
e) Erro de execução.

---

**14. (Recursividade)** Sobre recursividade, assinale a alternativa correta:

a) Toda função recursiva deve ter um caso base para evitar chamadas infinitas.
b) Recursividade não pode ser usada em árvores.
c) Funções recursivas não utilizam a pilha de execução.
d) Sempre é mais eficiente que a solução iterativa.
e) Só pode ser usada com números inteiros.

---

**15. (Grafos – Matriz de Adjacência)** Na representação de um grafo não direcionado por matriz de adjacência:

a) A matriz é sempre simétrica em relação à diagonal principal.
b) O número de linhas é sempre diferente do número de colunas.
c) Não é possível representar grafos completos.
d) Apenas arestas ponderadas podem ser representadas.
e) O valor 0 sempre indica que existe aresta entre dois vértices.

> [!success] Gabarito 11-15
> 11. c | 12. b | 13. b | 14. a | 15. a

---

## 🚀 Projeto Prático: Agente de FAQ com IA

> [!tip] Dica Importante
> Este trabalho foi planejado para que você use IA em todo o processo. Use IAs para te guiar na solução de problemas e na programação. Documente todo o processo, incluindo problemas e soluções.

---

### Visão Geral

Construir um **agente inteligente** que responda perguntas usando **documentos reais** (PDFs, textos, links) como base de conhecimento, utilizando o **framework Agno** e aplicando **estruturas de dados**.

O sistema deve:
1. **Receber documentos** (manuais, editais, apostilas)
2. **Ler e organizar** conteúdo usando estruturas de dados
3. **Armazenar** informações em vector store
4. **Responder perguntas** usando IA
5. **Demonstrar** via API ou página web

---

### 🎯 Objetivo

- Aprender na prática como estruturas de dados são usadas em projetos reais
- Desenvolver um agente de IA com busca inteligente (RAG)
- Treinar raciocínio lógico criando fluxos de decisão
- Documentar o projeto explicando cada estrutura aplicada

---

### 📦 Entregáveis

| Item | Descrição |
|------|-----------|
| **Código-fonte** | Repositório com README |
| **Vídeo** | Até 5 min mostrando funcionamento |
| **Relatório** | 1 página explicando estruturas usadas |
| **Demonstração** | Ao vivo |

---

### 📋 Passo a Passo

#### Etapa 1 — Coleta e Preparação

- Escolha documentos para a base do FAQ
- **Lista**: todos os arquivos a processar
- **Set**: remover duplicados
- **Fila**: ordem de processamento

#### Etapa 2 — Chunking e Indexação

- Divida documentos em blocos de texto (chunks)
- Armazene em **vetor** para acesso rápido
- Gere **embeddings** e salve em vector store
- Use **dicionário**: `{id_chunk: {"texto": "...", "fonte": "arquivo.pdf"}}`

#### Etapa 3 — Criando o Agente

- Configure agente no Agno com:
  - Ferramenta de busca no vector store
  - Memória para perguntas anteriores
  - **Árvore de decisão** para classificar perguntas
- Perguntas em **fila** processadas na ordem
- Use **pilha** para busca em profundidade (DFS)

#### Etapa 4 — Fluxo de Raciocínio

| Estrutura | Uso |
|-----------|-----|
| **Árvore** | Classificar perguntas em categorias |
| **Pilha** | Seguir links/relações entre conteúdos |
| **Grafo** | Mapear relações entre tópicos |
| **Lista** | Histórico de respostas |

#### Etapa 5 — API e Demonstração

- Crie API com FastAPI (endpoint `/ask`)
- Opcionalmente, página web básica
- Demonstre com 3 perguntas reais

---

### 🗂️ Onde Cada Estrutura Aparece

| Estrutura | Aplicação no Projeto |
|-----------|---------------------|
| **Vetor** | Lista de chunks de texto |
| **Lista encadeada** | Pipeline de processamento |
| **Pilha** | Busca em profundidade (DFS) |
| **Fila** | Gerenciar perguntas e documentos |
| **Árvore** | Roteamento de perguntas |
| **Dicionário** | Índice {id → dados} |
| **Set** | Remover duplicatas |
| **Grafo** | Conexões entre tópicos |

---

### 📊 Critérios de Avaliação (6 pontos)

| Critério | Pontos |
|----------|--------|
| Funcionalidade do agente | 2 pts |
| Uso correto das estruturas | 2 pts |
| Relatório | 1 pt |
| Demonstração/vídeo | 1 pt |

---

### ⭐ Extras (Opcional)

- Criar **vários agentes** com funções diferentes
- Adicionar **feedback** do usuário
- Fazer **análise de métricas**

---

### 📅 Cronograma

| Data | Atividade |
|------|-----------|
| 08/08/2025 | Início - Ler conceitos e começar trabalho |
| 09/10/2025 | **Entrega do trabalho** |
| 21/11/2025 | **Prova** (conteúdo: esta página + trabalho) |

> [!warning] Avaliação
> - Trabalho: 6 pontos
> - Prova: 4 pontos
> - Individual
