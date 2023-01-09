#encoding: utf-8    

Dado('que esteja na Pagina inicial') do
    @pesquisa = PesquisaPage.new
    @pesquisa.visit_google
end
  
Quando('digitar os dados para realizar uma {string}') do |pesquisa|
    @pesquisa = PesquisaPage.new
    @pesquisa.pesquisa(pesquisa)
end
  
Então('será visualizado a {string} solicitada') do |pesquisa|
    @pesquisa = PesquisaPage.new
    expect(@pesquisa.valida_pesquisa(pesquisa)).to be_truthy
end