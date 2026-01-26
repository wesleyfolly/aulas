---
tipo: aula
resumo: "Aula prática de montagem e configuração de redes, incluindo crimpagem de cabos, configuração de roteadores e switches."
tags:
  - aula
  - redes-de-computadores
  - pratica
  - crimpagem
  - roteador
  - switch
---

# Montagem e Configuração de Rede

> [!quote] Mãos na Massa
> *A prática é fundamental para consolidar o conhecimento em redes. Aqui você aprenderá desde a crimpagem de cabos até a configuração de equipamentos.*

---

## 🎯 Objetivos da Aula

> [!success] Competências a Desenvolver

- **Compreender** os padrões de cabeamento estruturado (T568A e T568B)
- **Aprender** a preparar e crimpar cabos Ethernet (UTP) com conectores RJ-45
- **Identificar** as diferenças entre cabos diretos e crossover
- **Realizar** testes de conectividade e solucionar problemas

---

## 🧰 Materiais Necessários

| Material | Especificação |
|----------|---------------|
| **Cabos UTP** | Categoria 5e ou 6 (par trançado) |
| **Conectores RJ-45** | Para cabos sólidos ou flexíveis |
| **Alicate de crimpagem** | Para conectores RJ-45 |
| **Decapador** | Ou estilete |
| **Testador de cabos** | Cabo LAN tester |
| **Equipamentos de teste** | Computadores ou switch |
| **EPI** | Óculos de proteção (opcional) |

---

![[Recursos/Redes de Computadores/Montagem e configuração de rede/pinagem-rj45-t568a.png|Pinagem RJ-45 T568A]]

---

## 📋 Conteúdo Programático

> [!info] Estrutura da Aula

1. **Introdução aos Cabos de Rede**: Tipos (UTP, STP, coaxial, fibra) e categorias
2. **Padrões de Cabeamento**: TIA/EIA-568A e 568B
3. **Ferramentas e Materiais**: Função de cada ferramenta
4. **Procedimentos de Crimpagem**: Passo a passo detalhado
5. **Testes e Solução de Problemas**: Identificação de falhas

---

## 🔌 Padrões de Cabeamento

### Padrão T568A

| Pino | Cor do Fio |
|------|------------|
| 1 | Branco e Verde |
| 2 | Verde |
| 3 | Branco e Laranja |
| 4 | Azul |
| 5 | Branco e Azul |
| 6 | Laranja |
| 7 | Branco e Marrom |
| 8 | Marrom |

### Padrão T568B

| Pino | Cor do Fio |
|------|------------|
| 1 | Branco e Laranja |
| 2 | Laranja |
| 3 | Branco e Verde |
| 4 | Azul |
| 5 | Branco e Azul |
| 6 | Verde |
| 7 | Branco e Marrom |
| 8 | Marrom |

> [!tip] Na Prática
> O **padrão T568B é o mais usado** por ser historicamente adotado pelas empresas de telecomunicações.

---

## 🔀 Tipos de Cabos

| Tipo | Padrão | Uso |
|------|--------|-----|
| **Cabo Direto** | Mesmo padrão nas duas pontas (B/B ou A/A) | PC ↔ Switch, PC ↔ Roteador |
| **Cabo Crossover** | T568A em uma ponta, T568B na outra | PC ↔ PC, Switch ↔ Switch |

> [!info] Nota
> Equipamentos modernos com Auto-MDIX detectam automaticamente o tipo de cabo.

---

## 🛠️ Passo a Passo da Crimpagem

### 1️⃣ Preparação do Cabo

1. **Medir e cortar** o comprimento necessário
2. **Remover a capa externa** (~2 cm com decapador)
3. **Cuidado**: Não danificar os fios internos

### 2️⃣ Organização dos Fios

1. **Desembaraçar** os pares trançados
2. **Alinhar** conforme o padrão escolhido (T568B)
3. **Endireitar** os fios com os dedos

### 3️⃣ Corte Uniforme

- Cortar as pontas para ficarem **niveladas** (~1,5 cm)

### 4️⃣ Inserção no Conector

1. **Verificar orientação**: Trava voltada para baixo
2. **Inserir os fios**: Cada fio em sua posição
3. **Capa externa**: Deve entrar no conector

### 5️⃣ Crimpagem

1. **Posicionar** conector no alicate
2. **Apertar firmemente** até o fim

### 6️⃣ Teste

1. Conectar no **testador de cabos**
2. Verificar se todos os **pares estão corretos**

---

## ⚠️ Erros Comuns e Dicas

> [!warning] Problemas Frequentes

| Erro | Solução |
|------|---------|
| Fios na ordem incorreta | Verificar sequência antes de crimpar |
| Fios não totalmente inseridos | Empurrar até o fim do conector |
| Má crimpagem | Apertar firmemente o alicate |
| Capa muito decapada | Manter ~2 cm de exposição |

---

## 📡 Configuração de Roteadores

### Conceitos Básicos

| Termo | Definição |
|-------|-----------|
| **Roteador** | Encaminha pacotes entre redes diferentes |
| **Camada** | Opera na camada 3 (Rede) |
| **Função** | Conectar redes, gerenciar tráfego, definir rotas |

### Tipos de Roteadores

| Tipo | Uso |
|------|-----|
| **Doméstico** | Residências, funcionalidades simples |
| **Empresarial** | Alta carga, mais configurações |
| **De Borda** | Conexão empresa ↔ internet |
| **De Núcleo** | Coração de grandes redes |

### Comandos Básicos (Cisco IOS)

```cisco
! Definir hostname
Router(config)# hostname MeuRoteador

! Configurar interface
Router(config)# interface GigabitEthernet0/0
Router(config-if)# ip address 192.168.1.1 255.255.255.0
Router(config-if)# no shutdown

! Rota estática
Router(config)# ip route 10.0.0.0 255.0.0.0 192.168.1.254
```

---

## 🔄 Configuração de Switches

### Conceitos Básicos

| Termo | Definição |
|-------|-----------|
| **Switch** | Conecta dispositivos na mesma rede |
| **Camada** | Opera na camada 2 (Enlace) |
| **Função** | Filtra e encaminha por endereço MAC |

### Switch vs Hub

| Dispositivo | Comportamento |
|-------------|---------------|
| **Switch** | Envia apenas para o destino correto |
| **Hub** | Envia para todos os dispositivos |

### Tipos de Switches

| Tipo | Características |
|------|-----------------|
| **Gerenciável** | VLANs, QoS, segurança, configuração avançada |
| **Não Gerenciável** | Plug-and-play, sem configuração |
| **Camada 2** | Usa endereços MAC |
| **Camada 3** | Também faz roteamento |

### Comandos Básicos (Cisco IOS)

```cisco
! Definir hostname
Switch(config)# hostname MeuSwitch

! Senha de console
Switch(config)# line console 0
Switch(config-line)# password minhasenha
Switch(config-line)# login

! Criar VLAN
Switch(config)# vlan 10
Switch(config-vlan)# name Vendas

! Atribuir porta à VLAN
Switch(config)# interface FastEthernet0/1
Switch(config-if)# switchport access vlan 10

! Salvar configuração
Switch# copy running-config startup-config
```

---

## 🔐 Segurança de Porta (Port Security)

```cisco
! Ativar port security
Switch(config-if)# switchport port-security
Switch(config-if)# switchport port-security maximum 2
Switch(config-if)# switchport port-security violation shutdown
```

