#encoding: utf-8
class CarrosController < ApplicationController
  
  def index
  	@carro = Carro.new
  	@carros = Carro.all
  end

  def create
  	@carro = Carro.new(params[:carro])
  	if @carro.save
  		redirect_to root_path, :notice => "Seu veículo foi anunciado com sucesso"
  	end
  end
  
end
