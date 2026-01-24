# Google hacking

<aside>
✅ **Google hacking é a utilização de filtros específicos do google com o objetivo de obter informações específicas ou “escondidas”.**

</aside>

# Alguns filtros básicos

1. **intitle:** busca somente no título da página.
2. **inurl:** busca na URL da página.
3. **site:** busca um domínio em específico.
4. **ext/filetype:** busca por tipos de extensão.
5. **intext:** busca por página que contenham o texto informado.
6. **link:** busca por páginas que contenham um link especificado.
7. é possível misturar os filtros. exemplo: site:iff.edu.br filetype:pdf

Também é possível utilizar operadores lógicos como AND(+) OR (|) NOT (-)

# Filtros mais específicos

Listar instalações padrão do apache

```python
intitle:Test.Page.for.Apache "It worked!"
```

---

É possível acessar o cache de uma página através do google. Isso fará com que você acesse uma página sem registrar seu IP, e sem necessidade de proxy.

Basta clicar na setinha

![Untitled](../../Recursos/Segurança da informação/Coleta de informações/Google hacking/Untitled.png)

(GHDB) É um banco de dados de google dorks. 

[Offensive Security's Exploit Database Archive](https://www.exploit-db.com/google-hacking-database)