# Conceitos gerais de programação

# **Linguagens** naturais **vs linguagens de** programação

![Untitled](../../Recursos/Programação/Conceitos gerais de programação/Untitled.png)

Humanos possuem linguagens. Exemplo: linguagem corporal e escrita.

Máquinas possuem as chamadas linguagem de máquina formada por um conjunto de comandos ou lista de instruções.

# **Compilação vs. interpretação**

Há duas formas diferentes de **transformar um programa de uma linguagem de programação de alto nível em linguagem de máquina**:

# Compilação

![Untitled](../../Recursos/Programação/Conceitos gerais de programação/Untitled 1.png)

O código fonte do programa é traduzido uma vez gerando um código executável. 

Esse executável é específico para uma plataforma (windows ou linux por exemplo)

O programa que executa essa tradução é chamado de compilador ou tradutor.

# Interpretação

Cada vez que o programa for executado, o código fonte é utilizado. 

O programa que utiliza o código fonte para executar as funções chama-se interpretador.

O utilizador final precisa do código fonte e do programa interpretador.

![Untitled](../../Recursos/Programação/Conceitos gerais de programação/Untitled 2.png)

Qual é melhor? Compilação ou interpretação?

Não existe melhor. Caso existisse, o outro deixaria de ser utilizado.

É uma questão de objetivo do projeto. Ambos tem vantagens e desvantagens.

> *O python é uma linguagem interpretada. Linguagens interpretadas também são chamadas de linguagens de scripting e os códigos são geralmente chamados de scripts.*
> 

# Exemplo prático: compilação vs interpretação

## **Exemplo com Linguagem Compilada (C)**

1. **Criar arquivo C**: Salve o seguinte código em um arquivo chamado **`hello.c`**.
    
    ```c
    #include <stdio.h>int main() {
        printf("Hello, World!\n");
        return 0;
    }
    ```
    
2. **Compilar**: No terminal, execute:
    
    ```bash
    gcc hello.c -o hello
    ```
    
    Isso cria um arquivo executável chamado **`hello`**.
    
3. **Executar**: No terminal, execute:
    
    ```bash
    ./hello
    ```
    
    Você verá "Hello, World!".
    

## **Exemplo com Linguagem Interpretada (Python)**

1. **Criar arquivo Python**: Salve o seguinte código em um arquivo chamado **`hello.py`**.
    - Criar e executar arquivo no windows
        1. Abrir o PowerShell
        2. Escolher alguma pasta
        3. type nul > arquivo.py
        4. notepad [arquivo.py](http://arquivo.py) 
        5. python3 arquivo.py
        6. Measure-Command {python3 arquivo.py}
            1. o comando acima mede o tempo de execução do programa
    
    ```python
    print("Olá, mundo!")
    ```
    
2. **Executar**: No terminal, execute:
    
    ```bash
    python hello.py
    ```
    
    Você verá "Hello, World!" imediatamente.
    

## **Observações**

- No exemplo de C, você precisa passar pela etapa de compilação antes de executar.
- No exemplo de Python, o código é interpretado e executado diretamente.

[Linguagem Compilada vs Interpretada | Qual é melhor?](https://www.youtube.com/watch?v=SNyh-cubxaU)

# Termos

> [!INFO]
> Biblioteca - é um conjunto de subprogramas e funções que podem ser reutilizado em programas.

> **API**  (`"Application Programming Interface`) que significa em tradução para o português "Interface de Programação de Aplicativos". É parecido com uma biblioteca porém seu foco é a integração entre sistemas. É utilizar a funcionalidade de outros sistemas no seu programa, também chamando funções.
>