# Email harvesting

O objetivo dessa ferramenta é coletar **emails** de um determinado domínio ou alvo. 

Mas também pode coletar outras informações como subdomínios , hosts (dispositivos), nomes de funcionários, portas abertas, banners.

Principal ferramenta utilizada: theHarvester (tem no Kali)

Como usar:

```powershell
root@kali:~# theHarvester -d [kali.org](http://kali.org/) -l 500 -b google
-d: É o domínio do alvo
-l: Para limitar os resultados
```

[laramies/theHarvester](https://github.com/laramies/theHarvester)

OBS: Se alguém encontrar uma ferramenta online (no navegador) que faça isso me avise.