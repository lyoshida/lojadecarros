# encoding: utf-8

Dado /^que estou na página inicial$/ do
  visit '/'
end

Dado /^preencho "(.*?)" com "(.*?)"$/ do |campo, valor|
  fill_in campo, :with => valor
end

Dado /^pressiono "(.*?)"$/ do |botao|
  click_button botao
end

Então /^eu deveria ver "(.*?)"$/ do |resultado|
  page.should have_content(resultado)
end


Dado /^que os seguintes carros existem:$/ do |tabela|
  tabela.hashes.each do |atributos|
  	Carro.create atributos
  	sleep 1
  end
end

Quando /^eu clico em "(.*?)"$/ do |link|
  click_link(link)
end

Então /^eu não deveria ver "(.*?)"$/ do |resultado|
    page.should_not have_content(resultado)
end
