# Escaneamento de IPs e portas (Port Scanning)

> Quais ferramentas serão utilizadas no trabalho? Nmap e Masscan
> 

<aside>
✅ Port Scanner é um programa capaz de varrer endereços IPs em uma rede e também por portas em determinados hots.

</aside>

# Nmap

`O Nmap é o **port scan** mais usado no mundo e possui várias funcionalidades.`

# Alguns recursos mais utilizados:

- Descobrir quais hosts estão ativos na rede
- Verificar quais portas estão abertas em cada host
- Saber o que de fato está rodando em determinada porta
- Procurar em uma rede hosts que estejam rodando determinado serviço (ou porta aberta)
- detecção de sistema operacional
- 

# Alguns parâmetros interessantes:

- A (Enable OS detection, version detection, script scanning, and traceroute) 

 -sS Este tipo de varredura é mais rápido do que outros tipos, pois não completa a conexão TCP, reduzindo assim a quantidade de tráfego de rede.

-sT

-D (decoy) - utilizado para tentar dificultar ou enganar IDSs

- - script vuln (testa todos os scripts disponíveis para descoberta de vulnerabilidades)

-sn (sem detecção de portas)

- O (detecção de sistema operacional)

-sV (detecção da versão do serviço)

# Exemplos práticos

Para escanear as portas de um determinado IP

```python
nmap 192.168.18.1
```

Para descobrir hosts ativos na rede

```python
nmap -sn 192.168.18.0/24
// o /24 é a máscara de rede (o tamanho da rede)
// -sn no portscan
```

Um vídeo interessante sobre a ferramenta

[Nmap Tutorial to find Network Vulnerabilities](https://www.youtube.com/watch?v=4t4kBkMsDbQ)

Caso deseje utilizar o nmap no windows existe uma versão com interface gráfica chamada de zenmap. 

[Nmap: the Network Mapper - Free Security Scanner](https://nmap.org/)

---

# Masscan

# Outras ferramentas interessantes

- Netcat