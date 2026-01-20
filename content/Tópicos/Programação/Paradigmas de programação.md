# Paradigmas de programação

> Paradigma de programação é um meio de se **classificar** as linguagens de programação baseado em suas funcionalidades. As linguagens podem ser classificadas em vários paradigmas.
> 

<aside>
✅ **De forma simples, um paradigma é um molde ou modelo para se resolver um problema.**

</aside>

[Os Paradigmas da Programação | Explicados](https://www.youtube.com/watch?v=7R6CIDND87Y)

**Os paradigmas podem ser divididos em 2 grandes grupos.**

![Untitled/Recursos/Programação/Conceitos gerais de programação/Untitled.png)

<aside>
💡 Uma linguagem pode se encaixar em **um ou mais** paradigmas. A maior parte das linguagens que usamos no dia a dia são multiparadigma.

</aside>

IMPORTANTE: Alguns paradigmas são **modificações** ou **evoluções** de outros, ou seja, não são coisas completamente separadas.

# Diferença prática entre programação imperativa e declarativa

## 1. **Programação Imperativa**

- Você diz **como** algo deve ser feito, passo a passo.

**Exemplo em Python: somar números de uma lista**

```python

numeros = [1, 2, 3, 4, 5]
soma = 0
for numero in numeros:
    soma += numero
print(soma)

```

Aqui, você descreve cada passo (loop, incremento) para realizar a soma.

## 2. **Programação Declarativa**

- Você diz **o que** quer, e o sistema cuida de **como** fazer.

**Exemplo em Python: somar números de uma lista**

```python

numeros = [1, 2, 3, 4, 5]
soma = sum(numeros)
print(soma)

```

Aqui, você apenas declara o que quer (somar os números), e a função `sum()` faz todo o trabalho por trás.

## Diferenças principais:

- **Imperativa**: foco no **como fazer** (controle detalhado).
- **Declarativa**: foco no **o que fazer** (resultado final).

# 1. Programação Imperativa

<aside>
✅ Programas imperativos são uma sequência de comandos para o computador executar.

</aside>

O nome paradigma **Imperativo**, está ligado ao tempo verbal imperativo, onde o programador diz ao computador: faça isso, depois isso, depois aquilo... 

Este paradigma de programação se destaca pela simplicidade, uma vez que todo ser humano, ao se programar, o faz imperativamente, baseado na ideia de ações e estados.

> O foco da programação imperativa é em COMO FAZER e não em O QUE FAZER, como nos paradigmas **declarativos**.
> 

# **Elementos da programação imperativa**

Os principais elementos da programação imperativa são:

- Definição de tipos de dados
- Expressões e atribuições
- Estruturas de controle de fluxo (programação estruturada)
- Definição de sub-rotinas (programação procedimental)

# Vantagens

- Eficiência (embute o modelo [Von Neumann](https://pt.wikipedia.org/wiki/Von_Neumann))
    - Arquitetura de Von Neumann
        
        [O gênio que revolucionou a COMPUTAÇÃO #SagaDosComputadores Ep. 4](https://www.youtube.com/watch?v=DhodsmIm3LE)
        
        - **Ideia central**: von Neumann pensou o computador como uma máquina que **guarda dados e instruções no mesmo lugar (memória)**. Antes, máquinas antigas tinham dados e programas separados.
        - **Componentes principais**:
            1. **Memória** → onde ficam guardados tanto os dados quanto o programa.
            2. **Unidade Central de Processamento (CPU)**, dividida em:
                - **ULA (Unidade Lógica e Aritmética)** → faz cálculos e comparações.
                - **UC (Unidade de Controle)** → interpreta as instruções e diz o que a ULA e a memória devem fazer.
            3. **Dispositivos de Entrada e Saída** → teclado, mouse, monitor, etc.
        - **Como funciona** (ciclo de execução):
            1. **Buscar** → a UC pega uma instrução da memória.
            2. **Decodificar** → entende o que precisa ser feito.
            3. **Executar** → a ULA ou outro componente realiza a operação.
            4. **Armazenar/mostrar** → resultado vai para a memória ou para a saída.
        - **Ponto chave**: dados e instruções usam o **mesmo “caminho”** dentro do sistema, o que facilita a programação mas também pode gerar o chamado **gargalo de von Neumann** (a CPU às vezes fica esperando a memória).
        
        👉 Resumindo em uma frase:
        
        A arquitetura de von Neumann é como uma cozinha onde **a receita (programa)** e **os ingredientes (dados)** ficam guardados no mesmo armário (memória), e o **chefe (CPU)** busca, interpreta e executa passo a passo.
        
        ![image.png/Recursos/Programação/Paradigmas de programação/image.png)
        
- Paradigma dominante e bem estabelecido
- Modelagem natural de aplicações do mundo real
- Possui tipagem fraca e também muito flexível (alguns especialistas consideram isso uma desvantagem)
- É fácil de se entender, sendo amplamente usada em cursos introdutórios de programação.
- O que é tipagem fraca?
    1. Definição: Tipagem fraca permite que operações sejam realizadas em variáveis de tipos diferentes sem conversão explícita.
    2. Flexibilidade: Mais fácil de escrever código, mas pode levar a erros inesperados.
    3. Exemplo: Em JavaScript, **`"5" + 3`** resulta em **`"53"`**.
    4. Riscos: Problemas de depuração, comportamento imprevisível.
    5. Uso: Linguagens como JavaScript, PHP e Python são exemplos de linguagens com tipagem fraca.
    6. Comparação: Em linguagens de tipagem forte, como Java ou C++, esse tipo de operação exigiria uma conversão explícita.
    7. Relevância: Entender tipagem ajuda a evitar bugs e melhorar a eficiência do código.

# Desvantagens

- Possui difícil legibilidade
- Descrições demasiadamente profissional focaliza o "como" e não o "quê"
- Relacionamento indireto com a E/S (indução a erros/estados)
- Ainda se foca em como a tarefa deve ser feita e não em o que deve ser feito.
- Tende a gerar códigos confusos, onde tratamento dos dados são misturados com o comportamento do programa (quando a gambiarra vai tomando conta..)

# Linguagens de programação

Alguns exemplos de linguagens de programação que baseiam-se no modelo imperativo:

- [Ada](https://pt.wikipedia.org/wiki/Ada_(linguagem_de_programa%C3%A7%C3%A3o))
- [ALGOL](https://pt.wikipedia.org/wiki/ALGOL)
- [Basic](https://pt.wikipedia.org/wiki/Basic)
- [C](https://pt.wikipedia.org/wiki/Linguagem_de_programa%C3%A7%C3%A3o_C)
- [PHP](https://pt.wikipedia.org/wiki/PHP)
- [Java](https://pt.wikipedia.org/wiki/Java_(linguagem_de_programa%C3%A7%C3%A3o))
- [Cobol](https://pt.wikipedia.org/wiki/Cobol)
- [Fortran](https://pt.wikipedia.org/wiki/Fortran)
- [Pascal](https://pt.wikipedia.org/wiki/Pascal_(linguagem_de_programa%C3%A7%C3%A3o))
- [Python](https://pt.wikipedia.org/wiki/Python)
- [Lua](https://pt.wikipedia.org/wiki/Lua_(linguagem_de_programa%C3%A7%C3%A3o))
- [Mathematica](https://pt.wikipedia.org/wiki/Mathematica)

# 1.1 Programação estruturada

A [programação estruturada](https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_estruturada), surge como uma forma de possibilitar que o programador tenha maior controle sobre o fluxo de execução do programa.  

> *Essa forma de programar foi desenvolvida por Michael A. Jackson no seu livro "Principles of Program Design" de **1975**.*
> 

Para isso, qualquer programa pode ser reduzido a 3 estruturas:

- Estruturas de sequência: onde uma tarefa é executada após a outra, linearmente.
- Estruturas de decisão: onde, a partir de um teste lógico, determinado trecho de código é executado, ou não.
- Estruturas de iteração: onde, a partir de um teste lógico, determinado trecho de código é repetido por um número finito de vezes.

![Untitled/Recursos/Programação/Conceitos gerais de programação/Untitled 1.png)

Tendo, na prática, sido transformada na [programação modular](https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_modular) (ou procedural), a Programação estruturada orienta os programadores para a criação de estruturas simples em seus programas, usando as subrotinas e as funções. Foi a forma dominante na criação de [software](https://pt.wikipedia.org/wiki/Software)  anterior à programação orientada por objetos.

Exemplo prático:

```python
import requests

# Sequência: requisita a cotação
url = "[https://api.exchangerate-api.com/v4/latest/USD](https://api.exchangerate-api.com/v4/latest/USD)"
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

# 1.2 Programação procedural (ou modular)

A Programação Procedural é um dos paradigmas mais antigos e fundamentais de programação. Ela é derivada da ideia de procedimentos de máquina, que eram sequências de instruções a serem executadas. Abaixo está uma análise mais detalhada desse paradigma:

1. **Procedimentos e Funções**:
    - No cerne da programação procedural estão os procedimentos (também conhecidos como rotinas, sub-rotinas ou funções). São blocos de códigos que realizam uma tarefa específica.
    - A ideia é que uma tarefa complexa possa ser decomposta em sub-tarefas menores, e cada uma delas pode ser implementada como um procedimento.
2. **Fluxo de Controle Sequencial**:
    - No paradigma procedural, a execução do código acontece de cima para baixo, em sequência, salvo quando há chamadas de funções ou instruções de controle de fluxo, como loops e condicionais.
3. **Variáveis e Escopo**:
    - Dados em programação procedural são armazenados em variáveis. Estas variáveis têm um 'escopo', o que significa que elas podem não ser acessíveis de todas as partes do programa. Por exemplo, uma variável definida dentro de uma função geralmente não é acessível fora dessa função.
    - A manipulação direta dos dados é uma característica central da programação procedural.
4. **Modularidade**:
    - A modularidade refere-se à capacidade de dividir um programa em partes menores (ou módulos) que podem ser desenvolvidas, testadas e depuradas separadamente. Isso torna o código mais gerenciável, reutilizável e menos propenso a erros.
    - Cada módulo tem uma tarefa específica e pode ser chamado por outros módulos ou pelo programa principal.
5. **Estado e Efeitos Colaterais**:
    - Programação procedural muitas vezes lida com 'estado', o que significa que funções podem modificar variáveis que existem fora de seu próprio escopo. Isso pode levar a 'efeitos colaterais', onde a chamada de uma função modifica o comportamento de outra parte do programa de maneiras não intencionais ou inesperadas.
6. **Vantagens**:
    - **Simplicidade**: Para aplicações menos complexas, a abordagem procedural pode ser mais simples e direta.
    - **Eficiência**: Pode ser mais eficiente em termos de uso de memória e tempo de execução, dependendo da aplicação.
    - **Facilidade de depuração**: Devido à sua natureza sequencial e modular.
7. **Desvantagens**:
    - **Escalabilidade**: Para sistemas maiores e mais complexos, a programação procedural pode se tornar difícil de gerenciar e manter.
    - **Reusabilidade**: A reutilização de código pode ser mais desafiadora em comparação com paradigmas orientados a objetos, especialmente em grandes projetos.

A programação procedural foi a base para muitos dos primeiros softwares e ainda é relevante em muitas áreas, especialmente onde o desempenho é crítico ou para sistemas mais simples. No entanto, com o aumento da complexidade do software, outros paradigmas, como a programação orientada a objetos, tornaram-se mais prevalentes.

Exemplo prático:

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

# 1.3 Programação Orientada a Objetos (POO)

[Programação Orientada a Objetos | Explicação Simples](https://www.youtube.com/watch?v=pbb0jzXt_xA)

A Programação Orientada a Objetos é um paradigma de programação baseado no conceito de "objetos", que representam entidades do mundo real. Estes objetos contêm dados e comportamentos. A seguir, uma análise detalhada desse paradigma:

1. **Objetos e Classes**:
    - **Objeto**: Uma instância de uma classe que representa uma entidade. Um objeto tem estado (representado por atributos ou variáveis) e comportamento (representado por métodos ou funções).
    - **Classe**: Uma definição ou blueprint a partir da qual os objetos são criados. Define atributos e métodos que seus objetos terão.
    - Exemplos
        1. **Classe: `Carro`**
            - **Objetos**: Toyota Corolla, Volkswagen Golf, Ford Mustang
            - **Atributos** (características que definem um carro):
                - Cor
                - Modelo
                - Ano de fabricação
                - Velocidade máxima
            - **Métodos** (ações que o carro pode executar):
                - Acelerar
                - Frear
                - Ligar os faróis
                - Tocar a buzina
            
            **Aplicação**: A classe **`Carro`** define um blueprint para carros em geral, e os objetos (Toyota Corolla, Volkswagen Golf, Ford Mustang) são instâncias específicas dessa classe com características e comportamentos definidos.
            
        2. **Classe: `Livro`**
            - **Objetos**: "O Senhor dos Anéis" de J.R.R. Tolkien, "1984" de George Orwell, "Orgulho e Preconceito" de Jane Austen
            - **Atributos**:
                - Título
                - Autor
                - ISBN
                - Número de páginas
            - **Métodos**:
                - Ler
                - Marcar página
                - Fechar
                - Abrir
            
            **Aplicação**: A classe **`Livro`** define a estrutura geral de um livro. Cada objeto, como "O Senhor dos Anéis" ou "1984", é uma instância específica dessa classe, com seus próprios detalhes, como título e autor.
            
        3. **Classe: `ContaBancaria`**
            - **Objetos**: Conta de João, Conta de Maria, Conta de Carlos
            - **Atributos**:
                - Número da conta
                - Titular
                - Saldo
            - **Métodos**:
                - Depositar
                - Sacar
                - Transferir
                - Ver saldo
            
            **Aplicação**: A classe **`ContaBancaria`** define a estrutura geral de uma conta bancária. Os objetos (Conta de João, Conta de Maria, etc.) são representações específicas dessa classe, cada uma com seu próprio titular e saldo.
            
2. **Encapsulamento**:
    - A ideia de que os dados de um objeto devem ser mantidos privados e só podem ser acessados ou modificados por meio de métodos definidos na classe.
    - Isso protege a integridade dos dados e torna a implementação do objeto independente de sua representação externa.
3. **Herança**:
    - Permite que uma classe (classe filha) herde características e comportamentos de outra classe (classe mãe).
    - Facilita a reutilização de código e estabelece uma relação natural tipo "é um" entre a classe mãe e a classe filha.
4. **Polimorfismo**:
    - Refere-se à capacidade de objetos de classes diferentes serem referenciados por uma abstração comum.
    - Facilita a escrita de código genérico e reutilizável.
5. **Mensagem e Interface**:
    - Em POO, geralmente diz-se que um objeto envia uma "mensagem" para outro objeto quando quer que ele execute um de seus métodos.
    - A "interface" de um objeto representa os métodos que estão disponíveis para serem chamados por outros objetos.
6. **Abstração**:
    - Refere-se ao processo de definir as características essenciais de um objeto, separando os detalhes menos importantes.
    - Ajuda na modelagem de objetos complexos, focando apenas no que é relevante para a aplicação.
7. **Vantagens**:
    - **Reusabilidade**: A herança e o polimorfismo facilitam a reutilização de código.
    - **Manutenção**: Alterações em uma classe não necessariamente afetam outras classes, graças ao encapsulamento.
    - **Modelagem Intuitiva**: A POO pode ser mais intuitiva para modelar sistemas complexos, já que se alinha bem com a maneira como percebemos o mundo real.
8. **Desvantagens**:
    - **Complexidade**: A POO pode introduzir uma camada adicional de complexidade, especialmente para iniciantes.
    - **Desempenho**: Em alguns casos, a POO pode ser menos eficiente em termos de desempenho em comparação com a programação procedural.
    - **Tamanho**: Os programas orientados a objetos podem se tornar extensos.

A Programação Orientada a Objetos é amplamente usada em desenvolvimento de software moderno, especialmente em aplicações e sistemas que requerem uma estrutura modular e escalável. Ela oferece uma estrutura sólida para organizar e gerenciar sistemas complexos e é a base de muitas frameworks e linguagens de programação populares, como Java, C++, Python, entre outras.

Exemplo prático:

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

# 2. Programação Declarativa

<aside>
✅ No paradigma declarativo o programador não diz COMO o programa deve agir e sim O QUE ele deve retornar.

</aside>

Também é possível escrever programas de forma declarativa utilizando linguagens de programação **imperativas**. 

Isso pode ser obtido utilizando métodos como encapsulamento para esconder detalhes de implementação fora de uma biblioteca. Isso **simplifica** a programação.

SQL é exemplo de declarativa, onde eu passo o que eu quero, e não como eu quero. O banco de dados que vai decidir a melhor forma de trazer os dados, como ordenar, etc.

# 2.1 Programação funcional

<aside>
✅ programação funcional é um paradigma de programação que trata a computação como uma avaliação de **funções matemáticas** e que evita estados ou dados **mutáveis**.

</aside>

Por exemplo, a função:  

$$
{\displaystyle f(x)=x^{2}+2}
$$

é definida em termos de funções de exponenciação e adição. Do mesmo modo, a linguagem deve oferecer funções básicas que não requerem definições adicionais.

A programação funcional trata as funções de forma em que estas possam ser passadas como **parâmetro** e valores para outras e funções e podendo ter o resultado armazenado em uma constante.

Exemplos de linguagens funcionais

- Erlang
- Haskell
- Lisp
- Clojure
- JavaScript (algumas linguagens são multiparadigma)
- Python (algumas linguagens são multiparadigma)

> *em uma programação estritamente funcional, não há alocação explícita de **memória**, nem **declaração explícita de variáveis**. No entanto, essas operações podem ocorrer automaticamente quando a função é **invocada.***
> 

[Programação Funcional // Dicionário do Programador](https://www.youtube.com/watch?v=BxbHGPivjdc)

# 2.2 Programação Lógica

A programação lógica é um paradigma de programação que se baseia em formalismos da lógica matemática. Aqui estão suas características principais:

1. **Declaratividade**: Em vez de instruções explícitas sobre como realizar tarefas, a programação lógica permite que o programador declare conhecimento e consultas sobre esse conhecimento.
2. **Relacionamentos e Regras**: Os programas são escritos em termos de relações, e as regras são usadas para inferir conclusões a partir de dados disponíveis.
3. **Backtracking**: Mecanismo de busca automática que tenta todas as possibilidades até encontrar uma solução para o problema.
4. **Recursão**: A recursão é um conceito fundamental e frequentemente usada para expressar algoritmos.
5. **Unificação**: É um processo automático de fazer variáveis corresponderem a termos.
6. **Independência de Controle**: O programador não precisa especificar como usar as regras e fatos, mas o sistema de execução decide a ordem de avaliação.

`Prolog` é um dos principais exemplos de linguagem de programação lógica, amplamente utilizada para tarefas que envolvem inteligência artificial e processamento de linguagem natural.

A programação lógica, como mencionado, é um paradigma que se apoia na lógica matemática, mais precisamente na lógica de primeira ordem. O foco é em expressar *o quê* deve ser feito, ao invés de *como* deve ser feito, o que é característico de paradigmas imperativos.

Num programa lógico, especificamos um conjunto de fatos e regras. Os fatos são declarações básicas sobre o domínio do problema, enquanto as regras definem relações lógicas entre fatos e são usadas para inferir novos fatos. A execução de um programa lógico envolve a consulta a essas regras e fatos para derivar conclusões sem a necessidade de um caminho de execução explicitamente definido.

Agora, para um exemplo prático simples em Prolog, vamos considerar um cenário onde queremos determinar a relação familiar entre diferentes pessoas:

```prolog
prologCopy code
% Fatos representando relações parentais
parent(ana, bruno).  % Ana é mãe de Bruno
parent(paulo, bruno).  % Paulo é pai de Bruno
parent(bruno, carlos). % Bruno é pai de Carlos
parent(bruno, diana).  % Bruno é pai de Diana

% Regra para determinar se alguém é avô/avó
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Regra para determinar se alguém é irmão/irmã
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Consulta: Quem é o avô/avó de Carlos?
% ?- grandparent(X, carlos).

% Consulta: Quem são os irmãos/irmãs de Diana?
% ?- sibling(diana, X).

```

Na consulta para achar o avô/avó de Carlos, o Prolog vai buscar por um fato **`parent(X, Z)`** e um fato **`parent(Z, carlos)`** que sejam verdadeiros. No nosso exemplo, o Prolog encontraria **`bruno`** como **`Z`** (porque **`parent(bruno, carlos)`** é um fato) e então procuraria por **`parent(X, bruno)`**, encontrando **`ana`** e **`paulo`**.

Na consulta para achar os irmãos/irmãs de Diana, o Prolog procura por dois fatos **`parent(Z, diana)`** e **`parent(Z, X)`** onde **`X`** é diferente de **`Diana`**. O resultado seria **`carlos`**, já que ambos compartilham o mesmo pai **`bruno`**.

Exemplos de linguagens lógicas

- Prolog
- Mercury

# Observações

# Diferença entre procedimento e função

Basicamente a diferença é que o procedimento **não retorna** algum valor, já a função pode **gerar um resultado** que pode ser utilizado pelo próprio programa.

[Paradigmas de Linguagem de Programação](https://www.youtube.com/playlist?list=PL8lS5-l2_3cfYaFDK_zBCZQo70h4orszf)