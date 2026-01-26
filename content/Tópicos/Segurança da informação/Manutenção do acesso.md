---
tipo: aula
resumo: "Técnicas utilizadas para manter acesso persistente a sistemas comprometidos após a exploração inicial."
tags:
  - aula
  - seguranca-da-informacao
  - pos-exploracao
  - persistencia
  - backdoor
---

# Manutenção do Acesso

> [!quote] Persistência no Alvo
> *Após comprometer um sistema, atacantes estabelecem mecanismos para manter acesso mesmo após reinicializações ou atualizações.*

---

## 🎯 O que é?

> [!warning] Fase do Pentest
> **Manutenção do acesso** (Maintaining Access) é a fase em que o atacante estabelece mecanismos de **persistência** para garantir acesso contínuo ao sistema comprometido.

### Objetivos

| Objetivo | Descrição |
|----------|-----------|
| **Persistência** | Sobreviver a reinicializações |
| **Redundância** | Múltiplos pontos de acesso |
| **Discrição** | Evitar detecção |
| **Escalabilidade** | Movimentação lateral |

---

## 🛠️ Técnicas de Persistência

> [!info] Métodos Comuns

### Linux

| Técnica | Descrição |
|---------|-----------|
| **Cron jobs** | Tarefas agendadas maliciosas |
| **SSH keys** | Chaves autorizadas adicionadas |
| **Init scripts** | Scripts de inicialização |
| **Systemd services** | Serviços persistentes |
| **Rootkits** | Modificação do kernel |

### Windows

| Técnica | Descrição |
|---------|-----------|
| **Registry Run keys** | Execução automática no boot |
| **Scheduled Tasks** | Tarefas agendadas |
| **Services** | Serviços maliciosos |
| **WMI subscriptions** | Eventos WMI persistentes |
| **DLL Hijacking** | Substituição de DLLs |
| **Startup folder** | Pasta de inicialização |

---

## 🔧 Ferramentas

> [!tip] Arsenal para Persistência

| Ferramenta | Descrição |
|------------|-----------|
| **Metasploit** | Módulos de persistência |
| **Empire** | Agentes persistentes |
| **Cobalt Strike** | Beacons de comando e controle |
| **Netcat** | Reverse shells simples |

---

## 📊 Indicadores de Comprometimento (IoC)

> [!success] O que Monitorar

| Indicador | Descrição |
|-----------|-----------|
| **Processos estranhos** | Processos desconhecidos em execução |
| **Conexões suspeitas** | Tráfego para IPs desconhecidos |
| **Alterações em arquivos** | Modificações em arquivos de sistema |
| **Contas novas** | Usuários criados inesperadamente |
| **Serviços novos** | Serviços não autorizados |

---

## 🔒 Contramedidas

> [!danger] Como se Defender

| Medida | Descrição |
|--------|-----------|
| **EDR** | Endpoint Detection and Response |
| **Monitoramento** | Análise comportamental |
| **Baseline** | Conhecer o estado normal do sistema |
| **Integridade** | Verificação de arquivos (AIDE, Tripwire) |
| **Segmentação** | Limitar movimentação lateral |

---

## ⚠️ Considerações Éticas

> [!warning] Atenção
> - Só utilize em **ambientes autorizados**
> - Em pentests, **documentar** todos os mecanismos instalados
> - **Remover** todos os artefatos após o teste

