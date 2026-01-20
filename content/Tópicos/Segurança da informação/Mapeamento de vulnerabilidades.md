# Mapeamento de vulnerabilidades

> É descobrir as vulnerabilidades (fraquezas) de um sistema ou rede. Essas fraquezas serão utilizadas mais tarde para um possível ataque bem sucedido.
> 

# Conceitos

# O mapeamento de vulnerabilidades pode ser:

- manual ou automático;
- em rede local ou na Internet;
- autenticado ou não autenticado;

<aside>
💡 Manual x automático

</aside>

Hackers experientes usam uma combinação das duas técnicas. Um mapeamento **automático**, utiliza softwares que realiza todo o processo de verificação da existência de vulnerabilidades no sistema.

Um mapeamento **manual**, como o nome já diz, não utiliza ferramentas de mapeamento, onde muitas vezes correm muitos falsos positivos e negativos. São utilizadas outras ferramentas mais específicas para olhar e testar cada serviço. É um processo difícil e geralmente o hacker já está com alguma porta ou serviço em mente.

Existem vantagens e desvantagens em ambos os processos.

<aside>
💡 Rede local x Internet

</aside>

Você pode mapear vulnerabilidades tanto na rede onde você está conectado (**rede local**), ou em alvos que estão na **Intenet** (em outras redes)

Ambos possuem vantagens e desvantagens e dependem de onde seu alvo está.

<aside>
💡 Autenticado x não autenticado

</aside>

É possível configurar os scanners de vulnerabilidades com usuários e senhas válidos para que seja realizada uma análise ainda mais profunda.

Um mapeamento autenticado demora mais tempo e requer configurações extras porém possui mais resultados.

---

# Ferramentas que podem ser utilizadas:

- nmap
- nikto
- ~~nessus~~

> Pesquisar por 'mapeamento de vulnerabilidades usando nmap' e 'mapeamento de vulnerabilidades usando nessus'
> 

# Análise de vulnerabilidades com Nmap

O nmap possui uma poderosa funcionalidade chamada Nmap Scripting Engine (NSE)

Isso permite a utilização, criação e compartilhamento de scripts e com isso é possível realizar análises automatizadas de vulnerabilidades.

Em resumo, temos uma biblioteca pronta de scripts de análise de vulnerabilidade.

Esses scripts ficam localizados em `/usr/share/nmap/scripts/`

Mais informações em [https://nmap.org/book/nse-usage.html](https://nmap.org/book/nse-usage.html)

<aside>
👉 Importante: Os scripts são divididos em CATEGORIAS. Iremos nos concentrar nas categorias `vuln` e `exploit`. Porém os scripts também são categorizados em `safe` e `intrusive`. NÃO EXECUTEM SCRIPTS DA CATEGORIA INTRUSIVE EM ALGOS REAIS, SOMENTE EM MÁQUINAS VIRTUAIS. (desculpe ter gritado)

</aside>

Mesmo os scripts da categoria `vuln` podem realizar atividades de `exploit`, então se você não souber o que está fazendo, pode tirar serviços do ar ou prejudicar o alvo. 

Então para saber quais scripts são seguros utilizar sem prejudicar o alvo, foi adicionada uma segunda categorização chamada `safe`.

Para saber mais informações sobre cada script, existe um arquivo chamado ***script.db***

É possível realizar consultas nesse arquivo para entender melhor o que cada script faz e qual a sua categoria.

Exemplo:

```jsx
head -n 5 script.db
```

é possível realizar alguns filtros como

```jsx
cat script.db | grep '"vuln"\|"exploit"’
```

é possível rodar um grupo inteiro de scripts contra um alvo com um só comando

```jsx
nmap --script vuln 10.11.1.10
```

> Demonstrar na rede local e metasploitable
> 

---

# Aplicações Web

# Algumas procuras manuais

- Análise do código fonte da página
    
    Procurar comentários, links escondidos, javascript, framework utilizado, etc
    
- Ferramentas de desenvolvedor - Debugger (developer tools)
    
    No firefox o nome é Debugger, porém no chrome se chama Sources
    
- Ferramentas de desenvolvedor - aba Network
-