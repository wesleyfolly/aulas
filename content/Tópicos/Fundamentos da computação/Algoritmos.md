---
tipo: aula
resumo: "Algoritmos: introdução aos conceitos, características, tipos, representação (pseudocódigo e diagramas de fluxo) e análise de complexidade."
tags:
  - aula
  - algoritmos
  - programação
  - fundamentos
---

# Algoritmos

> [!quote] A Receita da Computação
> *Um algoritmo é como uma receita: uma sequência de passos que, se seguidos corretamente, levam ao resultado desejado.*

---

## 🤔 O que é um Algoritmo?

> [!info] Definição
> Um algoritmo é uma sequência finita de instruções bem definidas para resolver um problema ou realizar uma tarefa.

| Pergunta | Resposta |
|----------|----------|
| **O que é?** | Sequência de passos para resolver um problema |
| **Por que é importante?** | É a base de toda programação e computação |
| **Onde usamos?** | Em todo lugar: apps, jogos, buscas, redes sociais |

---

## ✅ Características de um Algoritmo

> [!tip] Todo Algoritmo Deve Ter

| Característica | Descrição |
|----------------|-----------|
| **Precisão** | Cada passo deve ser claro e não ambíguo |
| **Unicidade** | Cada passo produz um resultado único |
| **Finitude** | Deve terminar após um número finito de passos |
| **Entrada** | Pode receber dados de entrada |
| **Saída** | Deve produzir um resultado |

---

## 🍳 Exemplos na Vida Cotidiana

> [!example] Algoritmos do Dia a Dia

| Exemplo | Descrição |
|---------|-----------|
| **Receita de bolo** | Ingredientes (entrada) → Passos → Bolo (saída) |
| **GPS/Google Maps** | Origem + Destino → Cálculo de rota → Direções |
| **Pesquisa no Google** | Termo buscado → Algoritmo de busca → Resultados |
| **Recomendações Netflix** | Histórico → Análise de padrões → Sugestões |

---

## 📚 Tipos de Algoritmos

### 🔍 Algoritmos de Busca

| Tipo | Como Funciona | Exemplo |
|------|---------------|---------|
| **Busca Linear** | Verifica item por item | Procurar nome em lista não ordenada |
| **Busca Binária** | Divide a lista ao meio repetidamente | Procurar palavra em dicionário |

---

### 📊 Algoritmos de Ordenação

| Tipo | Como Funciona | Velocidade |
|------|---------------|------------|
| **Bubble Sort** | Compara pares adjacentes e troca | Lento |
| **Quick Sort** | Divide e conquista com pivô | Rápido |
| **Merge Sort** | Divide, ordena e mescla | Rápido |

---

## 📝 Representação de Algoritmos

### Pseudocódigo

> [!info] O que é?
> Uma forma de escrever algoritmos usando linguagem natural estruturada, sem se preocupar com sintaxe de programação.

```
INÍCIO
    LEIA numero1
    LEIA numero2
    soma = numero1 + numero2
    ESCREVA "A soma é: ", soma
FIM
```

---

### Diagrama de Fluxo (Fluxograma)

> [!info] O que é?
> Representação gráfica do algoritmo usando símbolos padronizados.

| Símbolo | Significado |
|---------|-------------|
| **Oval** | Início/Fim |
| **Retângulo** | Processo/Ação |
| **Losango** | Decisão (Sim/Não) |
| **Paralelogramo** | Entrada/Saída |
| **Seta** | Fluxo de execução |

---

## ⏱️ Análise de Algoritmos

> [!warning] Por que Analisar?
> Nem todo algoritmo que funciona é eficiente. A análise ajuda a escolher o melhor algoritmo para cada situação.

### Complexidade de Tempo

| Notação | Nome | Descrição |
|---------|------|-----------|
| **O(1)** | Constante | Sempre leva o mesmo tempo |
| **O(log n)** | Logarítmica | Cresce lentamente |
| **O(n)** | Linear | Cresce proporcionalmente |
| **O(n²)** | Quadrática | Cresce rapidamente |

### Complexidade de Espaço

| Aspecto | Descrição |
|---------|-----------|
| **O que mede** | Quantidade de memória usada |
| **Por que importa** | Recursos são limitados |

---

## 📝 Conclusão

> [!success] Pontos Principais

- Algoritmos são a **base da computação** e programação
- Devem ser **precisos, únicos e finitos**
- Podem ser representados por **pseudocódigo** ou **fluxogramas**
- A **análise de complexidade** ajuda a escolher o algoritmo mais eficiente

> [!tip] Próximos Passos
> Para aprofundar, estude estruturas de dados e algoritmos mais complexos como grafos, árvores e programação dinâmica.

