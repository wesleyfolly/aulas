---
tipo: aula
resumo: "Ferramentas para captura e análise de pacotes de rede: Wireshark (interface gráfica) e TCPdump (linha de comando)."
tags:
  - aula
  - seguranca-da-informacao
  - wireshark
  - tcpdump
  - analise-de-trafego
  - packet-capture
---

# Análise de Tráfego (Wireshark e TCPdump)

> [!quote] Vendo o Invisível
> *A análise de tráfego permite visualizar e entender toda a comunicação que acontece em uma rede.*

---

## 🔍 O que é Análise de Tráfego?

> [!info] Conceito Fundamental
> Toda informação transmitida entre computadores é dividida em pequenos pedaços chamados **pacotes**. Dentro deles contém a informação em si e uma série de cabeçalhos para que o pacote possa chegar ao seu destino com integridade e segurança.

### O que é um Pacote?

| Componente | Descrição |
|------------|-----------|
| **Cabeçalhos** | Informações de roteamento, origem, destino |
| **Payload** | Os dados reais sendo transmitidos |
| **Checksum** | Verificação de integridade |

---

## 🦈 Wireshark

> [!success] O Analisador de Protocolos Mais Popular
> Ferramenta com **interface gráfica** para captura e análise de pacotes.

[🔗 Wireshark · Download Oficial](https://www.wireshark.org/download.html)

### Principais Recursos

| Recurso | Descrição |
|---------|-----------|
| **Captura em tempo real** | Intercepta pacotes enquanto trafegam |
| **Filtros de exibição** | Filtra pacotes específicos para análise |
| **Análise de protocolos** | Decodifica centenas de protocolos |
| **Estatísticas** | Gráficos e resumos de tráfego |
| **Exportação** | Salva capturas para análise posterior |

### Filtros Úteis

```
# Filtrar por IP
ip.addr == 192.168.1.1

# Filtrar por protocolo
http or dns

# Filtrar por porta
tcp.port == 80

# Filtrar requisições HTTP
http.request
```

---

## 💻 TCPdump

> [!tip] Análise via Linha de Comando
> Ferramenta em **linha de comando** para captura e análise de pacotes. Ideal para servidores sem interface gráfica.

### Comandos Básicos

```bash
# Capturar pacotes na interface eth0
tcpdump -i eth0

# Capturar e salvar em arquivo
tcpdump -i eth0 -w captura.pcap

# Filtrar por host
tcpdump host 192.168.1.1

# Filtrar por porta
tcpdump port 80

# Capturar apenas pacotes TCP
tcpdump tcp
```

### Parâmetros Importantes

| Parâmetro | Descrição                    |
| --------- | ---------------------------- |
| `-i`      | Interface de rede            |
| `-w`      | Salvar em arquivo            |
| `-r`      | Ler de arquivo               |
| `-c`      | Número de pacotes a capturar |
| `-n`      | Não resolver nomes DNS       |
| `-v`      | Modo verboso                 |

---

## 📊 Comparação

| Aspecto | Wireshark | TCPdump |
|---------|-----------|---------|
| **Interface** | Gráfica | Linha de comando |
| **Facilidade** | Mais intuitivo | Requer conhecimento |
| **Recursos** | Muitas estatísticas | Mais leve |
| **Uso** | Desktop | Servidores/Remoto |
| **Filtros** | GUI e texto | Texto |

---

## 🎯 Casos de Uso

> [!success] Quando Usar Análise de Tráfego

1. **Troubleshooting de rede** — Identificar problemas de conectividade
2. **Análise de segurança** — Detectar tráfego malicioso
3. **Engenharia reversa** — Entender protocolos proprietários
4. **Forense digital** — Investigar incidentes de segurança
5. **Desenvolvimento** — Debugar aplicações de rede

