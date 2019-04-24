#language: pt
Funcionalidade: Buscar um usuario para exemplo de requisição no teste automatizado

    @swapi
    Cenario: Busca usuario fake
        Quando fazer um GET /people/1/
        Então o codigo de resposta deve ser 200