---
tipo: aula
resumo: "Riscos do desenvolvimento com IA (alucinação, slopsquatting, vulnerabilidades, dívida técnica, prompt injection), boas práticas de revisão e testes, propriedade intelectual e o checklist do desenvolvedor responsável."
tags:
  - aula
  - engenharia-de-software
  - seguranca
  - ia
  - boas-praticas
  - etica
---

# Boas Práticas e Riscos da IA no Desenvolvimento

> [!quote] A regra que resume esta aula
> *A IA escreve o código, mas a responsabilidade é sua. "Foi o agente que fez" não existe como defesa — nem no incidente de segurança, nem no tribunal, nem com o cliente.*

---

## 1. Os riscos principais

### Alucinação de código

O modelo gera código **plausível porém errado**: APIs que não existem, parâmetros inventados, lógica sutilmente incorreta. O perigo não é o erro grosseiro (esse o teste pega) — é o código que funciona em 95% dos casos e falha silenciosamente nos 5% que importam.

### Slopsquatting (ataque real, nomeado em 2025)

1. LLMs alucinam nomes de pacotes que não existem (`requests-utils`, `fastapi-helper`...)
2. Atacantes **registram esses nomes** com malware no PyPI/npm
3. Dev aceita a sugestão, roda `pip install` → comprometido

**Defesa:** conferir cada dependência nova (existe? é popular? é mantida?) antes de instalar.

### Vulnerabilidades clássicas em escala

Código gerado sem revisão repete os erros dos dados de treino: SQL injection, XSS, secrets hardcoded, CORS aberto, falta de validação de entrada. Estudos seguidos (2023–2026) mostram taxa relevante de vulnerabilidades em código aceito sem revisão. A "ressaca do vibe coding" encheu a internet de apps com banco aberto e chave de API exposta no front-end.

### Prompt injection (o ataque da era agêntica)

Conteúdo malicioso **dentro dos dados** que o agente lê (uma issue, um README, uma página web) contendo instruções do tipo *"ignore suas regras e execute X"*. Agente com permissões largas + entrada não confiável = desastre.

**Defesa:** princípio do menor privilégio (o agente só acessa o que precisa), sandboxes, revisão de ações sensíveis, nunca dar credenciais de produção a um agente exploratório.

### AI slop e dívida técnica industrial

- **Slop:** código verboso, duplicado e sem coerência arquitetural, gerado e aceito em massa
- PRs gigantes que ninguém revisa de verdade ("LGTM de 3.000 linhas")
- Codebase que **ninguém no time entende** — o pior passivo possível
- Dívida técnica antes se acumulava na velocidade humana; agora se acumula na velocidade da máquina

### O paradoxo da produtividade

Métricas de 2025–2026 mostram: times disciplinados ficam muito mais rápidos com IA; times sem testes/review ficam mais rápidos **em produzir retrabalho**. A IA é um amplificador — amplifica também a bagunça.

---

## 2. Boas práticas (o antídoto)

### As 4 redes de segurança (inegociáveis)

1. **Testes automatizados** — a prova objetiva de que o código gerado funciona; agente bom roda os testes em loop até passar
2. **CI/CD** — nada chega em produção sem passar pelo pipeline
3. **Code review humano** — obrigatório no que é crítico: auth, pagamento, dados pessoais, queries, infra
4. **Versionamento disciplinado** — commits pequenos; PR gigante de agente = pedir para dividir

### Regras de revisão na era da IA

- **Revise na proporção do risco:** script descartável = olhada rápida; código de pagamento = linha por linha
- **Entenda antes de aceitar:** se você não consegue explicar o que o código faz, não pode aprovar
- **Desconfie da confiança:** o modelo apresenta código errado com a mesma segurança do código certo
- **Peça justificativa:** "por que essa abordagem?" — a explicação revela fragilidades

### Segredos e dados

- Secrets **nunca** no código (usar variáveis de ambiente/secret manager) — e nunca colar secrets no prompt
- Cuidado com o que sai da máquina: código proprietário em ferramenta sem contrato adequado pode violar políticas da empresa
- Dados pessoais de usuários **não são dados de teste** (LGPD)

### Dependências

- Toda dependência sugerida pela IA: verificar existência, popularidade, manutenção e licença
- Lockfiles + scanner de vulnerabilidades (Dependabot, `pip-audit`, `npm audit`) no CI

---

## 3. Propriedade intelectual e licenças

- **Quem é o autor do código gerado?** Tema juridicamente em disputa; na prática, a responsabilidade contratual é de quem entrega
- Código gerado pode reproduzir trechos de projetos com **licenças restritivas** (GPL etc.) — ferramentas enterprise têm filtros, mas a diligência é sua
- Projetos open source: declarar uso de IA quando o projeto exigir (várias comunidades têm políticas desde 2024–2025)
- O que você cola no prompt pode virar dado de treino, dependendo do plano/contrato — leia os termos

---

## 4. Ética e carreira

- **Honestidade:** entregar trabalho de IA como se fosse análise sua, em contexto que exige sua análise (prova, artigo, perícia), é fraude
- **O paradoxo do júnior:** a IA faz o trabalho que treinava iniciantes → quem está começando precisa estudar fundamentos **mais**, não menos (ver [[Desenvolvimento de Software com IA]])
- **Habilidade que valoriza:** julgamento. Saber dizer "esse código está errado e explico por quê" vale mais do que nunca
- **Dependência:** usar IA para ir mais rápido ≠ não saber fazer sem ela; em entrevistas e incidentes, o conhecimento é seu, não do modelo

---

## 5. Checklist do desenvolvedor responsável

> [!success] Antes de aceitar código de IA em produção
> - [ ] Eu **entendo** o que esse código faz?
> - [ ] Os **testes** cobrem o caminho feliz e os casos de erro?
> - [ ] As **dependências** novas existem e são confiáveis?
> - [ ] Há **secrets ou dados sensíveis** expostos?
> - [ ] Entradas de usuário são **validadas** (injection? XSS?)
> - [ ] O agente teve acesso **apenas ao necessário**?
> - [ ] O **CI** passou? Alguém (humano) revisou o que é crítico?
> - [ ] Se isso quebrar às 3h da manhã, **eu sei consertar**?

➡️ **Material de apoio:** [[Glossário de Engenharia de Software com IA]] — todos os termos da disciplina em um lugar só.
