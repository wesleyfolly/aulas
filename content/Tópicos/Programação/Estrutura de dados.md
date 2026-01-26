# Estrutura de dados

> [!INFO]
> 📗 O que são estrutura de dados? São formas de organizar **conjuntos** de dados na programação, assim como as **operações** nesses conjuntos.

# Roteiro de estudo

1. Aprender o que são estruturas de dados
2. Aprender as principais estruturas de dados independente de linguagem
3. Como usar estruturadas de dados em python
4. Como usar estruturadas de dados em C
5. Projeto prático e real de programação usando estruturas de dados (passarei os temas)
6. Conceitos: Estruturas de Dados Homogêneas; Estrutura de Dados Heterogêneas; Ponteiros; Recursividade;
Algoritmos para Pesquisa e Ordenação de Dados; Grafos.
7. Notas → Prova escrita valendo 6 pontos e trabalho valendo 4 pontos

# Principais estruturas de dados

- Vetor
- Lista
- Pilha
- Fila
- Árvore

## 1. **Vetor**

- **Conceito**:
    - Um vetor é uma coleção de elementos armazenados de forma contínua, como uma fila de caixas de supermercado organizadas uma ao lado da outra, onde cada caixa tem um número específico que a identifica.
    - Em um vetor, todos os elementos são do mesmo tipo, e cada posição tem um "endereço" que permite acessar diretamente o conteúdo.
- **Exemplo do Mundo Real**:
    - Imagine uma prateleira com uma fileira de livros. Cada espaço na prateleira representa uma posição, e para pegar um livro específico, basta saber o número da posição onde ele está. Não precisa procurar um a um, você vai direto ao número certo.

---

## 2. **Lista (ou Lista Encadeada)**

- **Conceito**:
    - Uma lista encadeada é uma sequência de elementos conectados, onde cada elemento "aponta" para o próximo, como uma corrente em que cada elo conecta ao seguinte.
    - Diferente do vetor, os elementos não precisam estar próximos na memória; cada item sabe onde está o próximo.
- **Exemplo do Mundo Real**:
    - Pense em um trem com vários vagões. Cada vagão está ligado ao próximo por um engate, formando uma sequência. Para acessar um vagão no meio, você precisa começar pelo primeiro e ir passando pelos engates até chegar onde quer.

---

## 3. **Pilha**

- **Conceito**:
    - Uma pilha funciona no modelo **LIFO** (Last In, First Out), ou seja, o último elemento que entra é o primeiro a sair.
    - Imagine uma pilha de pratos: o prato que você coloca por último é o primeiro que você pega ao tirar.
- **Exemplo do Mundo Real**:
    - Imagine uma pilha de livros. Quando você coloca um livro em cima, ele é o primeiro a sair. Se quiser o primeiro livro que colocou na pilha, terá que tirar todos os de cima antes de alcançá-lo.

---

## 4. **Fila**

- **Conceito**:
    - Uma fila segue o modelo **FIFO** (First In, First Out), ou seja, o primeiro elemento que entra é o primeiro a sair.
    - É como uma fila de pessoas esperando para comprar ingresso: a primeira pessoa que chegou é a primeira a ser atendida.
- **Exemplo do Mundo Real**:
    - Imagine a fila para entrar no cinema. A primeira pessoa da fila é a primeira a entrar, e os outros vão entrando conforme avançam. Não dá para alguém do final entrar antes de quem está no início.

---

## 5. **Árvore**

- **Conceito**:
    - Uma árvore é uma estrutura hierárquica onde cada elemento (ou "nó") pode ter vários "filhos". Ela começa com um nó raiz e se ramifica como um sistema de organização de dados.
    - As árvores são úteis para organizar informações que têm uma estrutura natural de hierarquia.
- **Exemplo do Mundo Real**:
    - **Árvore Genealógica**: onde cada pessoa pode ter vários filhos;
    - **Sistema de Arquivos**: onde uma pasta (nó) pode conter várias subpastas ou arquivos;
    - **Hierarquia Organizacional**: onde cada gestor pode ter uma equipe com várias pessoas;
    - Organização das áreas da vida;

---

Essas explicações com exemplos reais ajudam a visualizar como cada estrutura de dados funciona e por que são úteis para organizar informações de maneiras diferentes.

# Principais estrutura de dados em **Python**

[Principais Estruturas de Dados no Python](https://www.treinaweb.com.br/blog/principais-estruturas-de-dados-no-python)

- Listas
- Tupla
- Sets
- Dicionário

## 1. **Listas**

- **Explicação**:
    - As listas são coleções ordenadas e mutáveis que permitem armazenar diferentes tipos de dados. Elas podem ser modificadas, ou seja, é possível adicionar, remover e atualizar itens após a criação.
- **Principais Métodos**:
    - `append()`: adiciona um item ao final.
    - `remove()`: remove o primeiro item igual ao especificado.
    - `sort()`: ordena a lista.
- **Exemplo Prático**:
    
    ```python
    python
    Copiar código
    frutas = ["maçã", "banana", "laranja"]
    frutas.append("uva")
    frutas.remove("banana")
    frutas.sort()
    print(frutas)  # Output: ['laranja', 'maçã', 'uva']
    
    ```
    

---

## 2. **Tupla**

- **Explicação**:
    - Tuplas são coleções ordenadas, porém imutáveis. Depois de criadas, seus valores não podem ser alterados, adicionados ou removidos, o que as torna úteis para dados constantes.
- **Principais Características**:
    - Tuplas são definidas com parênteses `()`.
    - Muito úteis para armazenar dados fixos.
- **Exemplo Prático**:
    
    ```python
    python
    Copiar código
    cores = ("vermelho", "verde", "azul")
    print(cores[1])  # Output: verde
    # cores[1] = "amarelo"  # Erro: Tuplas são imutáveis
    
    ```
    

---

## 3. **Sets**

- **Explicação**:
    - Sets são coleções desordenadas e sem duplicatas. São úteis para realizar operações de conjuntos como união, interseção e diferença.
- **Principais Métodos**:
    - `add()`: adiciona um item ao set.
    - `remove()`: remove um item específico.
    - `union()`: retorna a união de dois sets.
- **Exemplo Prático**:
    
    ```python
    python
    Copiar código
    linguagens = {"Python", "Java", "C++"}
    linguagens.add("Ruby")
    linguagens.add("Python")  # Python não será adicionado novamente
    print(linguagens)  # Output: {'Python', 'Ruby', 'Java', 'C++'}
    
    ```
    

---

## 4. **Dicionário**

- **Explicação**:
    - Dicionários são coleções de pares chave-valor. São úteis para armazenar dados que podem ser identificados por uma chave, como um ID ou nome.
- **Principais Métodos**:
    - `get()`: retorna o valor associado a uma chave.
    - `pop()`: remove o item com a chave especificada.
    - `keys()`: retorna todas as chaves do dicionário.
- **Exemplo Prático**:
    
    ```python
    python
    Copiar código
    aluno = {"nome": "Ana", "idade": 20, "curso": "Engenharia"}
    print(aluno["nome"])  # Output: Ana
    aluno["idade"] = 21
    aluno.pop("curso")
    print(aluno)  # Output: {'nome': 'Ana', 'idade': 21}
    
    ```
    

---

Cada estrutura possui suas próprias vantagens e limitações.

# Relação entre as estruturas do Python e as estruturas de dados clássicas

---

## 1. **Vetor**

- **Relação com Python**:
    - Em Python, as **listas** são o equivalente mais próximo de um vetor. Ambas permitem acesso direto aos elementos por índice e são armazenadas em sequência na memória.
    - Como os vetores, as listas podem armazenar múltiplos elementos, mas, diferentemente dos vetores fixos em outras linguagens, as listas Python são dinâmicas, permitindo redimensionamento.
- **Exemplo Clássico**:
    
    ```python
    python
    Copiar código
    lista = [1, 2, 3, 4]
    print(lista[2])  # Acessa o terceiro elemento
    
    ```
    

---

## 2. **Lista (List Encadeada)**

- **Relação com Python**:
    - Python não tem listas encadeadas nativas, mas é possível simular uma lista encadeada usando classes e objetos.
    - A lista Python é um array dinâmico, que não opera exatamente como uma lista encadeada clássica.
- **Exemplo Clássico**:
    
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

## 3. **Pilha**

- **Relação com Python**:
    - Pilhas em Python são facilmente implementadas com **listas**, usando `append()` para adicionar itens no topo e `pop()` para removê-los.
    - Python também possui a biblioteca `collections.deque`, que pode ser mais eficiente para operações de pilha.
- **Exemplo Clássico**:
    
    ```python
    python
    Copiar código
    pilha = []
    pilha.append(1)  # Empilha 1
    pilha.append(2)  # Empilha 2
    pilha.pop()      # Remove 2 (topo)
    print(pilha)     # Output: [1]
    
    ```
    

---

## 4. **Fila**

- **Relação com Python**:
    - Fila (FIFO) também pode ser implementada com listas, mas é mais eficiente com a estrutura `collections.deque`, que permite remoção e inserção de elementos nas duas extremidades.
- **Exemplo Clássico**:
    
    ```python
    python
    Copiar código
    from collections import deque
    
    fila = deque()
    fila.append(1)  # Adiciona na fila
    fila.append(2)
    fila.popleft()  # Remove o primeiro elemento (1)
    print(fila)     # Output: deque([2])
    
    ```
    

---

## 5. **Árvore**

- **Relação com Python**:
    - Python não tem uma estrutura nativa de árvore, mas é possível criar uma usando classes e objetos, onde cada nó aponta para outros nós filhos.
    - Bibliotecas externas, como `binarytree`, facilitam a construção e visualização de árvores binárias.
- **Exemplo Clássico**:
    
    ```python
    python
    Copiar código
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

Essas relações mostram que, embora Python não tenha algumas dessas estruturas de forma explícita, sua flexibilidade permite que sejam implementadas com listas, deques e classes, adaptando-se bem a diferentes necessidades.

# Exemplos práticos utilizando estrutura de dados

Definir aqui uma lista de programas que cada pessoa irá fazer

# Conceitos principais

# 1. Estruturas de Dados Homogêneas

## 📘 Conceito:

Estruturas homogêneas armazenam elementos do **mesmo tipo de dado**. São ideais quando sabemos que todos os dados seguirão o mesmo formato.

## 🔍 Exemplos:

- Vetores (arrays)
- Matrizes (arrays multidimensionais)

## 💡 Aplicações:

- Listas de números
- Tabelas de notas/alunos

## 🧪 Implementação:

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

# 2. Estruturas de Dados Heterogêneas

## 📘 Conceito:

Estruturas heterogêneas armazenam **diferentes tipos de dados**. São úteis para representar entidades com múltiplas características.

## 🔍 Exemplo:

- `struct` em C

## 💡 Aplicações:

- Cadastro de alunos (nome, idade, nota)

## 🧪 Implementação:

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

# 3. Ponteiros

## 📘 Conceito:

Ponteiros são variáveis que armazenam o **endereço de memória** de outra variável.

## 🔍 Aplicações:

- Acesso eficiente a arrays
- Alocação dinâmica de memória
- Estruturas ligadas (listas, árvores)

## 🧪 Implementação:

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

# 4. Recursividade

## 📘 Conceito:

Recursividade ocorre quando uma função **chama a si mesma** para resolver subproblemas menores.

## 🔍 Aplicações:

- Fatorial
- Sequência de Fibonacci
- Árvores
- Busca em profundidade

## 🧪 Implementação:

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

# 5. Algoritmos para Pesquisa e Ordenação de Dados

## 📘 Conceitos:

- **Pesquisa Linear**: Percorre todos os elementos
- **Pesquisa Binária**: Requer vetor ordenado
- **Ordenação por Seleção**: Encontra o menor elemento e coloca no início
- **Ordenação por Bolha (Bubble Sort)**: Troca elementos vizinhos se estiverem fora de ordem

## 🧪 Implementação: Pesquisa Linear

```c
int buscaLinear(int v[], int tamanho, int chave) {
    for (int i = 0; i < tamanho; i++) {
        if (v[i] == chave) return i;
    }
    return -1;
}
```

## 🧪 Implementação: Pesquisa Binária

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

## 🧪 Implementação: Bubble Sort

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

# 6. Grafos

## 📘 Conceito:

Um **grafo** é um conjunto de **vértices (nós)** conectados por **arestas (ligações)**.

## 🔍 Tipos:

- Dirigido (com direção)
- Não-dirigido
- Ponderado (com peso)

## 💡 Aplicações:

- Mapas de cidades
- Redes sociais
- Roteamento na internet

## 🧪 Implementação (Matriz de Adjacência):

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

# ✅ Sugestões de Estudo:

- Refaça os códigos manualmente
- Tente implementar os mesmos conceitos usando alocação dinâmica
- Crie pequenos projetos aplicando múltiplos conceitos juntos (ex: cadastro com busca e ordenação)
- Resolva exercícios de lógica e algoritmos que envolvam ponteiros e recursão
- Jogue o conteúdo em alguma inteligência artificial de sua preferência e peça que ela crie questões e te faça perguntas para testar seu conhecimento. Lembre-se que todas as IAs não são 100% confiáveis e podem conter erros, porém apesar disso, é uma boa ferramenta de estudo.

---

# Listas de exercícios

**1. (Vetor)**

Em relação a vetores, assinale a alternativa correta:

a) Permitem armazenar elementos de tipos diferentes.

b) Os elementos são armazenados de forma não contígua na memória.

c) Permitem acesso direto aos elementos por índice.

d) Não possuem tamanho fixo em linguagens como C.

e) Sempre funcionam como listas encadeadas.

---

**2. (Lista Encadeada)**

Qual das alternativas descreve corretamente uma lista encadeada?

a) Estrutura homogênea que exige alocação contígua na memória.

b) Cada elemento aponta para o próximo, sem necessidade de estarem lado a lado na memória.

c) Estrutura LIFO utilizada para empilhar dados.

d) Organização hierárquica com um nó raiz e nós filhos.

e) Armazena sempre dados do mesmo tipo.

---

**3. (Pilha)**

Sobre o funcionamento de uma pilha, é correto afirmar que:

a) O primeiro elemento inserido é o primeiro a ser retirado.

b) O último elemento inserido é o primeiro a ser retirado.

c) Não é possível remover elementos de uma pilha.

d) Pilhas são usadas apenas em cálculos matemáticos.

e) É uma estrutura exclusiva de linguagens orientadas a objetos.

---

**4. (Fila)**

Uma fila segue qual política de acesso?

a) LIFO – Last In, First Out.

b) FIFO – First In, First Out.

c) FILO – First In, Last Out.

d) ALEATÓRIA – Ordem de prioridade definida pelo programador.

e) BINÁRIA – Ordem determinada por comparação de valores.

---

**5. (Árvore)**

Na estrutura de dados árvore, o elemento que não possui pai é chamado de:

a) Nó folha.

b) Nó interno.

c) Raiz.

d) Subnó.

e) Galho.

---

**6. (Python – Lista)**

No Python, qual método é usado para adicionar um elemento ao final de uma lista?

a) add()

b) insert()

c) append()

d) push()

e) extend()

---

**7. (Python – Tupla)**

Sobre tuplas no Python, assinale a alternativa correta:

a) São mutáveis e permitem adição de novos elementos.

b) São imutáveis e definidas com parênteses.

c) São semelhantes a listas, mas armazenam apenas strings.

d) São coleções desordenadas sem elementos duplicados.

e) Podem ser alteradas usando o método update().

---

**8. (Conceitos – Ponteiros)**

Em C, um ponteiro armazena:

a) Um tipo de dado inteiro que representa um índice.

b) O endereço de memória de outra variável.

c) Apenas endereços de variáveis inteiras.

d) Sempre um valor fixo definido em tempo de compilação.

e) Um vetor de valores contínuos.

---

**9. (Pesquisa Binária)**

Para aplicar a pesquisa binária em um vetor, é necessário que:

a) O vetor esteja ordenado.

b) O vetor tenha elementos únicos.

c) O vetor seja armazenado em forma de árvore.

d) Seja utilizada recursividade obrigatoriamente.

e) O vetor tenha apenas números inteiros.

---

**10. (Grafos)**

Um grafo ponderado é aquele em que:

a) Todos os nós possuem o mesmo grau.

b) Cada aresta possui um peso associado.

c) Não existe direção nas arestas.

d) Os vértices estão organizados em níveis hierárquicos.

e) Cada nó está conectado a todos os outros.

- Gabarito
    1. **c**
    2. **b**
    3. **b**
    4. **b**
    5. **c**
    6. **c**
    7. **b**
    8. **b**
    9. **a**
    10. **b**

**11. (Vetor x Lista Encadeada)**

Qual é a principal vantagem de uma lista encadeada em relação a um vetor em C?

a) Permite acesso direto a qualquer elemento pelo índice.

b) Utiliza menos memória em todos os casos.

c) Inserções e remoções no início não exigem deslocamento de elementos.

d) Sempre armazena elementos do mesmo tipo.

e) Ordena os elementos automaticamente.

---

**12. (Fila de Prioridade)**

Uma fila de prioridade difere de uma fila comum porque:

a) Os elementos são atendidos pela ordem de chegada.

b) Cada elemento é atendido de acordo com um peso ou prioridade.

c) Apenas números inteiros podem ser armazenados.

d) Utiliza sempre uma estrutura de pilha.

e) Não permite remoção de elementos.

---

**13. (Python – Sets)**

Considere o código:

dados = {1, 2, 3}

dados.add(2)

print(dados)

O que será impresso?

a) {1, 2, 3, 2}

b) {1, 2, 3}

c) [1, 2, 3]

d) {2, 3}

e) Erro de execução.

---

**14. (Recursividade)**

Sobre recursividade, assinale a alternativa correta:

a) Toda função recursiva deve ter um caso base para evitar chamadas infinitas.

b) Recursividade não pode ser usada em árvores.

c) Funções recursivas não utilizam a pilha de execução.

d) Sempre é mais eficiente que a solução iterativa.

e) Só pode ser usada com números inteiros.

---

**15. (Grafos – Matriz de Adjacência)**

Na representação de um grafo não direcionado por matriz de adjacência:

a) A matriz é sempre simétrica em relação à diagonal principal.

b) O número de linhas é sempre diferente do número de colunas.

c) Não é possível representar grafos completos.

d) Apenas arestas ponderadas podem ser representadas.

e) O valor 0 sempre indica que existe aresta entre dois vértices.

- Gabarito
    - **11.** c
    - **12.** b
    - **13.** b
    - **14.** a
    - **15.** a

# **Projeto Prático: Criando um Agente de FAQ com Inteligência Artificial (Agno) e Estruturas de Dados**

> [!TIP]
> OBS: Esse trabalho foi planejado para que você use inteligência artificial em todo o processo. Para cada etapa do projeto use IAs para te guiar em encontrar a melhor solução para o problema e também no auxílio da programação e execução do projeto.
> Quando encontrar algum erro ou obstáculo pelo caminho, explique o problema em detalhes para uma IA e tente, junto com ela, contornar o problema.
> Documente todo o processo em um arquivo de texto para ser entregue ao professor. Documente também os problemas e o que foi feito para resolver.

# **Visão geral**

A ideia é construir um **agente inteligente** que responda perguntas dos usuários usando **documentos reais** (PDFs, textos, links) como base de conhecimento.

Esse agente será feito com o **framework Agno** (para criar agentes de IA com memória e ferramentas) e vai usar **estruturas de dados** que você aprendeu (vetor, lista, pilha, fila, árvore, dicionário, set, grafo).

O resultado será um sistema que:

1. **Recebe documentos** (ex.: manuais, editais, apostilas da disciplina).
2. **Lê e organiza** o conteúdo usando estruturas de dados.
3. **Armazena** as informações em um banco de busca inteligente (vector store).
4. **Responde perguntas** usando um modelo de IA integrado com o Agno.
5. **Demonstra** essas respostas em uma API simples ou página web.

---

# **1. Objetivo do trabalho**

- **Aprender na prática** como estruturas de dados são usadas em projetos reais.
- **Desenvolver um agente de IA** com busca inteligente (RAG — Retrieval Augmented Generation).
- **Treinar o raciocínio lógico** criando fluxos de decisão.
- **Documentar o projeto** explicando onde cada estrutura foi aplicada.

---

# **2. O que você vai entregar**

- Código-fonte (em um repositório com README).
- Vídeo curto (até 5 min) mostrando o agente funcionando.
- Relatório simples (1 página) explicando o uso de cada estrutura de dados.
- Demonstração ao vivo

---

# **3. Passo a passo do desenvolvimento**

## **Etapa 1 — Coleta e preparação dos documentos**

- Escolha um conjunto de documentos para serem a base do seu FAQ (ex.: regras do curso, regulamentos, informações de um edital).
- **Lista**: crie uma lista com todos os arquivos que serão processados.
- **Set (conjunto)**: use para remover arquivos duplicados ou páginas repetidas.
- **Fila**: armazene os documentos que precisam ser processados. A cada passo, você retira o primeiro da fila e processa.

*Exemplo real*:

- Lista = [arquivo1.pdf, arquivo2.pdf, arquivo3.pdf]
- Set = {"arquivo1.pdf", "arquivo2.pdf"} (sem repetições)
- Fila = processa na ordem que chegaram.

---

## **Etapa 2 — Quebra em pedaços (chunking) e indexação**

- Leia o conteúdo dos documentos e divida em **pequenos blocos de texto** (chamados “chunks”).
- Armazene esses blocos em um **vetor** (array/lista) para acesso rápido.
- Para cada bloco, gere um **embedding** (representação numérica do texto) e salve em um **vector store** (ex.: Pinecone, Qdrant ou Chroma).
- Guarde as informações de cada chunk em um **dicionário** no formato:
    
    {id_chunk: {"texto": "...", "fonte": "arquivoX.pdf"}}.
    

*Por que isso é importante?*

O vetor armazena os dados em ordem, o dicionário permite buscar rapidamente detalhes de cada pedaço de texto.

---

## **Etapa 3 — Criando o Agente no Agno**

- Configure um agente no Agno com:
    - **Ferramenta de busca** no vector store.
    - **Memória** para lembrar perguntas anteriores.
    - **Árvore de decisão** para classificar o tipo de pergunta (ex.: “Prazo”, “Local”, “Definição”).
- As perguntas chegam em uma **fila** e são processadas na ordem.
- Se for necessário percorrer conexões (ex.: encontrar páginas relacionadas), use uma **pilha** para fazer busca em profundidade (DFS).

---

## **Etapa 4 — Fluxo de raciocínio com estruturas de dados**

- **Árvore**: usada para classificar perguntas em categorias.
- **Pilha**: para seguir links ou relações entre conteúdos até chegar na resposta.
- **Grafo**: para mapear relações entre tópicos (nós = assuntos, arestas = ligação entre eles).
- **Lista**: histórico de respostas dadas ao usuário.

---

## **Etapa 5 — API e demonstração**

- Crie uma API simples (com FastAPI) com o endpoint /ask para fazer perguntas ao agente.
- Também pode criar uma página web básica que envie perguntas para essa API.
- Mostre o funcionamento com 3 perguntas reais do seu conjunto de documentos.

---

# **4. Onde cada estrutura aparece no projeto**

- **Vetor (list/array)** → lista de chunks de texto.
- **Lista encadeada** → pode ser usada para criar um pipeline de etapas do processamento.
- **Pilha** → busca em profundidade (DFS) em um grafo de conceitos.
- **Fila** → gerenciar perguntas dos usuários e documentos a processar.
- **Árvore** → roteamento de perguntas por tipo.
- **Dicionário** → índice {id → dados do chunk}.
- **Set** → remover duplicatas de páginas ou termos.
- **Grafo** → mapear conexões entre tópicos.

---

# **5. Critérios de avaliação (total 6 pontos)**

- Funcionalidade do agente (responde corretamente) → 2 **pts**
- Uso correto das estruturas de dados (todas aplicadas) → 2 **pts**
- Relatório → **1 pt**
- Demonstração prática / vídeo → **1 pt**

---

# **6. Extras para quem quiser ir além**

- Criar **vários agentes** no Agno com funções diferentes (ex.: “Bibliotecário” que busca, “Especialista” que responde, “Revisor” que valida a resposta).
- Adicionar **feedback** do usuário para melhorar as respostas.
- Fazer **análise de métricas** (quantidade de buscas, tempo de resposta, taxa de acerto).

---

- Lista de tarefas e divisão de notas
    
    Possíveis horários para encontro: quarta às 15:40h. 
    
    Trabalho: 6 pontos
    
    Prova: 4 pontos
    
    Prova e trabalho individual.
    
    Tarefa 1 - Ler e estudar os conceitos de estrutura de dados. A partir de hoje 08/08/2025
    
    Tarefa 2 - Já começar o trabalho prático a partir de hoje 08/08/2025
    
    09/10/2025 - Data de entrega do trabalho
    
    21/11/2025 - Prova (A matéria é essa página e o conteúdo do trabalho)