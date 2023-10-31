#language: pt
Funcionalidade: Selecionar Produto na Loja
    @Loja
    Cenario: Selecao de Produto com Sucesso
        Dado que acesso a página incial do site
        Quando preencho o usuário como "standard_user"
        E a senha "sauce_secret" e clico no botão Login
        Entao exibe "Products" no titulo da secao
        Quando adiciono o produto "Sauce Labs Backpack" ao carrinho
        E clico no ícone do carrinho de compras
        Então exibe a pagina do carrinho com a quantidade "1"
        E o nome do produto "Sauce Labs Backpack"
        E o preço como "$29.99"
