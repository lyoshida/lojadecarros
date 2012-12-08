#language: pt
Funcionalidade: Carros
  Para vender meu carro
  Como um visitante da loja de carros
  Eu quero anunciar meu carro


Cenário: Anunciando meu carro
  Dado que estou na página inicial
  E preencho "Modelo" com "Monza"
  E preencho "Descrição" com "Ano 92, em excelente estado"
  E preencho "Preço" com "5000"
  E pressiono "Anunciar!"
  Então eu deveria ver "Seu veículo foi anunciado com sucesso"
  E eu deveria ver "Monza"

Cenário: Paginacao
  Dado que os seguintes carros existem:
  |modelo            |descricao             |preco        |
  |Carro1            |Desc1                 |1000         |
  |Carro2            |Desc2                 |2000         |
  |Carro3            |Desc3                 |3000         |
  |Carro4            |Desc4                 |4000         |
  |Carro5            |Desc5                 |5000         |
  |Carro6            |Desc6                 |6000         |
  E que estou na página inicial
  Então eu não deveria ver "Carro5"
  Quando eu clico em "Próximo >"
  Então eu não deveria ver "Carro1"
  E eu deveria ver "Carro6"