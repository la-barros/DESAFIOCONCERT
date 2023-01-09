#language: pt

@pesquisa
Funcionalidade: Pesquisa no Google
    Como usuário do Google
    Quero realizar uma pesquisa
    Para visualizar noticias do Chelsea

@pesquisa
Esquema do Cenário: pesquisa no Google 
    Dado que esteja na Pagina inicial
    Quando digitar os dados para realizar uma "<pesquisa>"
    Então será visualizado a "<pesquisa>" solicitada

Exemplos:
|pesquisa             |
|Concert Technologies |
|Sport                |

