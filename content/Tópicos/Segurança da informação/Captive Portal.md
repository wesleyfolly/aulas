# Captive Portal

## **1. Introdução**

- Em muitos locais públicos (aeroportos, shoppings, universidades, cafés), ao conectar-se ao Wi-Fi, o usuário não tem acesso imediato à internet.
- Antes disso, surge uma página que exige **autenticação, aceite de termos ou cadastro**: essa página é o **Captive Portal**.

---

## **2. Definição**

- **Captive Portal** é um mecanismo que **intercepta a primeira requisição HTTP/HTTPS** do usuário em uma rede sem fio e redireciona para uma página web controlada pelo administrador da rede.
- Essa página geralmente serve para:
    - Autenticar o usuário (login/senha).
    - Registrar dados (nome, e-mail, CPF).
    - Exigir aceite de termos de uso.
    - Mostrar publicidade antes de liberar a navegação.

---

## **3. Funcionamento Simplificado**

1. Usuário conecta-se ao **Access Point (AP)**.
2. O **roteador ou gateway** identifica que não há autenticação ativa para aquele cliente.
3. A primeira tentativa de acessar qualquer site é **redirecionada** para a página do Captive Portal.
4. O usuário fornece as credenciais/aceita termos.
5. O sistema valida a resposta → se aprovado, libera o tráfego normal para a internet.

---

## **4. Aplicações Práticas**

- **Hotéis/Aeroportos**: garantir que apenas hóspedes/passageiros usem a rede.
- **Empresas/Universidades**: controlar acesso e coletar métricas de uso.
- **Cafés/Comércios**: exibir publicidade ou coletar e-mails para marketing.

---

## **5. Vantagens**

- Controle de acesso sem fio.
- Facilidade de autenticação (via web, sem precisar configurar manualmente).
- Integração com sistemas de cadastro e marketing.

---

## **6. Limitações**

- Pode ser **contornado** em alguns cenários (ex.: uso de VPN ou MAC spoofing).
- **Experiência do usuário** às vezes ruim (redirecionamentos falhos em HTTPS).
- Necessidade de constante manutenção/atualização da página e sistema.

# Atividades práticas

1. Colocar um Captive Portal para funcionar
2. Burlar um Captive Portal