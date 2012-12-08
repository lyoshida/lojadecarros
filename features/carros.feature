#language: pt
Funcionalidade: Carros
  Para vender meu carro
  Como um visitante da loja de carros
  Eu quero anunciar meu carro

@javascript
Cenário: Anunciando meu carro
  Dado que estou na página inicial
  E preencho "Modelo" com "Monza"
  E preencho "Descrição" com "Ano 92, em excelente estado"
  E preencho "Preço" com "5000"
  E pressiono "Anunciar!"
  Então eu deveria ver "Seu veículo foi anunciado com sucesso"
  E eu deveria ver "Monza"