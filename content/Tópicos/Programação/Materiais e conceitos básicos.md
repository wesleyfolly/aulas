# Materiais e conceitos básicos

- Características da linguagem
- Variáveis e tipos de dados
    
    As variáveis permitem que você armazene e atualize dados em um programa de computador. Você define um nome para essa variável e guarda algum valor nela:
    
    ```python
    comida = "sorvete"
    dinheiro = 2000
    
    ```
    
    No exemplo acima, temos 2 variáveis. A variável nome "comida" armazena a string (palavras) sorvete, enquanto outra variável chamada "dinheiro" armazena um número (2000).
    
    As variáveis são poderosas, pois você pode alterá-las ao longo do programa. O exemplo a seguir define a variável idade como 30, então aumentamos essa variável idade em 1, tornando os dados da variável final para 31. 
    
    ```python
    idade = 30
    idade = idade + 1
    print(idade)
    
    ```
    
    Observe, na linha 2, a forma como atualizamos uma variável, à esquerda, e temos o nome da variável já criada "idade" seguido do operador =. À direita, temos o que estamos configurando a variável; no nosso caso, a variável idade (que atualmente está definida como 30) está sendo aumentada em 1.
    
    Vamos falar sobre Tipos de Dados, que é o tipo de dado que está sendo armazenado em uma variável. 
    
    Você pode armazenar texto, números e muitos outros tipos. Os tipos de dados mais conhecidos são:
    
    - **String** - Usado para combinações de caracteres, como letras ou símbolos
    - **Integer** - Números inteiros
    - **Float** - Números que contêm pontos decimais ou para frações
    - **Boolean** - Usado para dados restritos às opções True ou False
    - **List** - Série de diferentes tipos de dados armazenados em uma coleção
    
    ![](https://tryhackme-images.s3.amazonaws.com/user-uploads/5bec5dfd73790a7d06282266/room-content/1d06d9ac2b8f1e9f75f61f60169e7b2e.png)
    
- Controles de fluxo
    
    Os operadores lógicos permitem que sejam feitas atribuições e comparações e são usados em testes condicionais (como instruções if).
    
    | Operação lógica | Operador | Exemplo |
    | --- | --- | --- |
    | Equivalência | == | se x == 5 |
    | Menor que | < | se x < 5 |
    | Menos que ou igual a | <= | se x <= 5 |
    | Maior que | > | se x > 5 |
    | Melhor que ou igual a | >= | se x >= 5 |
    
    Operadores booleanos são usados para conectar e comparar relacionamentos entre instruções. Como uma instrução if, as condições podem ser verdadeiras ou falsas.
    
    | Operação booleana | Operador | Exemplo |
    | --- | --- | --- |
    | Ambas as condições devem ser verdadeiras para que a afirmação seja verdadeira | **E** | if x >= 5 **AND**  x <= 100Retorna TRUE se x forum número entre 5 e 100 |
    | Apenas uma condição da declaração precisa ser verdadeira | **OU** | if x == 1 **OR** x == 10Retorna TRUE se X for 1 ou 10 |
    | Se uma condição é o oposto de um argumento | **NÃO** | if **NOT** yRetorna TRUE se o valor de y for False |
    
    Vejamos alguns exemplos de código Python:
    
    ```python
    a = 1
    if a == 1 or a > 10:
         print("a is either 1 or above 10")
    
    ```
    
    ```python
    name = "bob" hungry = True
    if name == "bob" and hungry == True:
         print("bob is hungry")
    elif name == "bob" and not hungry:
         print("Bob is not hungry")
    elif: # If all other if conditions are not met
         print("Not sure who this is or if they are hungry")
    
    ```
    
    O uso de "instruções if" permite que os programas tomem decisões. Eles permitem que um programa escolha uma decisão com base em uma condição. Abaixo está um exemplo de como uma instrução if pode ser usada para determinar a seção de código (qual instrução de impressão) a ser usada.
    
    ```python
    if age < 17:
        print('You are NOT old enough to drive')
    elif:
        print('You are old enough to drive')
    
    ```
    
    No exemplo, se você tiver menos de 17 anos, o programa exibirá o texto "Você NÃO tem idade suficiente para dirigir"; no entanto, se você tiver mais de 17 anos, o programa exibirá "Você tem idade suficiente para dirigir". Dependendo de uma condição (neste exemplo, é a variável age), o programa executará diferentes seções de código.
    
    Existem alguns componentes-chave que observamos em nosso exemplo de código acima:
    
    - A palavra- `if`
        
        chave indica o início da instrução if, seguida por um conjunto de condições.
        
    - A instrução if só é executada se a condição (ou conjuntos de condições) for verdadeira. Em nosso exemplo, é `age < 17else`
        
        ; se essa condição for verdadeira (idade acima de 17), o código dentro da instrução if é executado. Por exemplo, se certas condições não forem atendidas, o programa pode usar como padrão o código em execução mostrado na
        
        parte da instrução if.
        
    - Dois pontos `:`
        
        marcam o fim da instrução if.
        
    - Observe o recuo. Qualquer coisa após os dois pontos que seja recuada é considerada parte da instrução if, que o programa executará.
    
    ![](https://tryhackme-images.s3.amazonaws.com/user-uploads/5bec5dfd73790a7d06282266/room-content/24fbdd3df0afe5215613d6be2f328f45.png)
    
    Se as instruções são essenciais na programação e serão algo que você usará muito.
    
- Estruturas de repetição
    
    Na programação, os loops permitem que os programas iterem e executem ações várias vezes. Existem dois tipos de loops: `for`e `while`.
    
    ## **while**
    
    Vamos começar analisando como estruturamos um loop while. Podemos fazer com que o loop seja executado indefinidamente ou (semelhante a uma instrução if) determinar quantas vezes o loop deve ser executado com base em uma condição.
    
    ```python
    i = 1
    while i <= 10:
         print(i)
         i = i + 1
    ```
    
    Este loop while será executado 10 vezes, produzindo o valor da variável `i` cada vez que iterar (loops). Vamos dividir isso:
    
    - A variável `i` é definida como 1
    - A instrução while especifica onde o início do loop deve começar
    - Toda vez que ele faz um loop, ele começará no topo (emitindo o valor de `i`)
    - Em seguida, ele vai para a próxima linha no loop, o que aumenta o valor de `i` em 1
    - Então (como não há mais código para o programa executar), ele vai para o topo do loop, iniciando o processo novamente
    - O programa continuará em loop até que o valor da variável `i` seja maior que 10
    
    ## **for**
    
    Um  loop for é usado para iterar sobre uma sequência, como uma lista. As listas são usadas para armazenar vários itens em uma única variável e são criadas usando colchetes (veja abaixo). Vamos aprender através do exemplo a seguir:
    
    ```python
    websites = ["facebook.com", "google.com", "amazon.com"]
    for site in websites:
         print(site)
    
    ```
    
    Este loop cima, será executado 3 vezes, mostrando na tela cada site da lista. Vamos ao passo a passo:
    
    - A variável de lista chamada `websites` está armazenando 3 elementos
    - O loop itera através de cada elemento, imprimindo o elemento
    - O programa para de fazer o loop quando passou por cada elemento no loop
    
    Para dar um cenário do mundo real, você pode criar um programa que verifique se um site está online ou se um item está em estoque. Você percorreria a lista de sites, adicionaria funcionalidades dentro do loop para verificar o site e produziria os resultados. 
    
    A sala " [Python for Pentesters](https://tryhackme.com/room/pythonforcybersecurity) " mostra como usar o Python para enumerar um alvo, construir um keylogger, escanear uma rede e muito mais.
    
    Em Python, também podemos iterar por um intervalo de números usando a função range. Abaixo está um exemplo de código Python que imprimirá os números de 0 a 4. Na programação, 0 geralmente é o número inicial, portanto, contar até 5 é de 0 a 4 (mas tem 5 números: 0, 1, 2, 3 e 4 )
    
    ```python
    for i in range(5):
         print(i)
    ```
    
- Estrutura de dados
- Funções
    
    ```python
    # Função sem argumento e sem retorno de valor
    def mensagem():
        print("Olá, mundo")
    
    mensagem()
    ```
    
    ```python
    # Função com argumento
    def calculadora_salario(valor_hora, horas_trabalhadas=160):
        return horas_trabalhadas * valor_hora
    
    valor_total = calculadora_salario(40,200)
    
    print(valor_total)
    ```
    
    À medida que os programas começam a ficar maiores e mais complexos, alguns de seus códigos serão repetitivos, escrevendo o mesmo código para fazer os mesmos cálculos, e é aí que entram as funções. Uma função é um bloco de código que pode ser chamado em diferentes lugares em seu programa.
    
    Você pode ter uma função para fazer um cálculo, como a distância entre dois pontos em um mapa ou um texto formatado de saída com base em determinadas condições. 
    
    Ter funções remove o código repetitivo, pois a finalidade da função pode  ser usada várias vezes em um programa.
    
    ```python
    def sayHello(name):
         print("Hello " + name + "! Nice to meet you.")
    
    sayHello("ben") # Output is: Hello Ben! Nice to meet you
    ```
    
    Existem alguns componentes-chave que podemos notar nesta função:
    
    - A palavra `def` indica o início de uma função. A função é seguida por um `name`
        
        que o programador define (e é um parâmetro de função). Em nosso exemplo, é sayHello.
        
    - Após o nome da função está um par de parênteses `()` que contém valores de entrada, dados que podemos passar para a função. No nosso exemplo, é um nome.
    - Dois pontos `:`
        
        marcam o fim do cabeçalho da função.
        
    
    Na função, observe o recuo. Semelhante às instruções `if`, qualquer coisa após os dois-pontos que seja recuada é considerada parte da função.
    
    Uma função também pode retornar um resultado, veja o bloco de código abaixo:
    
    ```python
    def calcCost(item):
         if(item == "sweets"):
              return 3.99
         elif (item == "oranges"):
              return 1.99
         else:
              return 0.99
    
    spent = 10
    spent = spent + calcCost("sweets")
    print("You have spent:" + str(spent))
    ```
    
    Se chamarmos a função `calcCost` e passarmos "sweets" como parâmetro do item, a função retornará um número decimal (float). 
    
    No código acima, pegamos uma variável chamada `spent` e somamos o custo dos "doces" através da função `calcCost`; quando chamamos `calcCost`, ela retornará o número 3,99.
    
- Objetos
- Arquivos
    
    
    Em Python, você pode ler e escrever a partir de arquivos. Vimos que na segurança cibernética é comum escrever um script e importá-lo ou exportá-lo de um arquivo; seja como uma maneira de armazenar a saída do seu script ou importar uma lista de 100 sites de um arquivo para enumerar. Vamos mergulhar direto em um exemplo:
    
    ```python
    f = open("file_name", "r")
    print(f.read())
    
    ```
    
    Para abrir o arquivo, usamos a função interna open(), e o parâmetro "r" significa "ler" e é usado enquanto lemos o conteúdo do arquivo. A variável tem um método read() para ler o conteúdo do arquivo. Você também pode usar o método readlines() e fazer um loop em cada linha do arquivo; útil se você tiver uma lista onde cada item está em uma nova linha. No exemplo acima, o arquivo está na mesma pasta que o script Python; se estivesse em outro lugar, você precisaria especificar o caminho completo do arquivo.
    
    Você também pode criar e gravar arquivos. Se você estiver gravando em um arquivo existente, abra o arquivo primeiro e use o "a" na função `open` após a chamada do nome do arquivo (que significa anexar). Se você estiver gravando em um novo arquivo, use "w" (escrever) em vez de "a". Veja os exemplos abaixo para maior clareza:
    
    ```python
    f = open("demofile1.txt", "a") # Append to an existing file
    f.write("The file will include more text..")
    f.close()
    
    f = open("demofile2.txt", "w") # Creating and writing to a new file
    f.write("demofile2 file created, with this content in!")
    f.close()
    
    ```
    
    Observe que usamos o método close() depois de gravar em um arquivo; isso fecha o arquivo para que não ocorra mais gravação no arquivo (dentro do programa).
    

# Apostilas

[apostila-python-orientacao-a-objetos.pdf](Materiais%20e%20conceitos%20b%C3%A1sicos/apostila-python-orientacao-a-objetos.pdf)

# Materiais

[MELHOR FORMA DE APRENDER PYTHON (Google Colab Notebook)](https://www.youtube.com/watch?v=Gojqw9BQ5qY&list=PLMdYygf53DP7YZiFUtGTWJJlvynRyrna-&index=2)

[Welcome to Python.org](https://www.python.org/)

<aside>
🧩 Boas práticas

</aside>

[[Armazenamento de senhas]]