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
