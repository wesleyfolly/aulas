# Ataques em rede local

> Quando se trata de um teste de intrusão, geralmente não temos acesso físico ao local, pois os alvos estão distantes. Porém é importante sabermos analisar a segurança de uma rede local.
> 

<aside>
👇 Conteúdo desta página

</aside>

<aside>
⚠️ Escaneamento de rede local pode não funcionar adequadamente ao utilizar máquinas virtuais (o problema não ocorre quando se usa uma interface de rede separada)

</aside>

# Redes sem fio

[[Ferramentas de redes sem fio (802 11)|Ferramentas de redes sem fio (802.11)]]

[[Bluetooth]]

[[Captive Portal]]

# Descoberta de hosts em rede local

Ferramentas utilizadas

- arp-scan
- netdiscover
- nmap ([zenmap para windows](https://nmap.org/zenmap/))

Exemplo com `nmap`

```jsx
nmap 192.168.1.0/24 
```

Exemplo com arp-scan

```python
arp-scan eth0 10.64.143.75/16
```

OBS: Para utilizar máquinas virtuais em rede local sem ter que ter outro adaptador de rede, usar a opção abaixo:

![Untitled](../../Recursos/Segurança da informação/Ataques em rede local/Untitled.png)

MITM attack

[How Hackers Use Xerosploit for Advanced MiTM Attacks](https://www.youtube.com/watch?v=C63PPEnFQnc)