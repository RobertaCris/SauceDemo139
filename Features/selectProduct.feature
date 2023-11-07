#language: pt
Funcionalidade: Selecionar Produto na Loja
    @Loja
    Cenario: Selecao de Produto com Sucesso
        Dado que acesso a página incial do site
        Quando preencho o usuário como "standard_user"
        E a senha "secret_sauce" e clico no botão Login
        Entao exibe "Products" no titulo da secao
        Quando adiciono o produto "Sauce Labs Backpack" ao carrinho
        E clico no ícone do carrinho de compras
        Então exibe a pagina do carrinho com a quantidade "1"
        E o nome do produto "Sauce Labs Backpack"
        E o preço como "$29.99"

    Esquema do Cenario: Selecao de Produto com Sucesso DDT
        Dado que acesso a página incial do site
        Quando preencho o usuário como <usuario>
        E a senha <senha> e clico no botão Login
        Entao exibe <tituloSecao> no titulo da secao
        Quando adiciono o produto <produto> ao carrinho
        E clico no ícone do carrinho de compras
        Então exibe a pagina do carrinho com a quantidade <quantidade>
        E o nome do produto <produto>
        E o preço como <preco>

        Exemplos:
        | usuario         | senha          | tituloSecao | produto                  | quantidade | preco    |
        | "standard_user" | "secret_sauce" | "Products"  | "Sauce Labs Backpack"    | "1"        | "$29.99" |
        | "visual_user"   | "secret_sauce" | "Products"  | "Sauce Labs Bike Light"  | "1"        |  "$9.99" |