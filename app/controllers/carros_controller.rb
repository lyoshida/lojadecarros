#encoding: utf-8
class CarrosController < ApplicationController
  
  def index
  	@carro = Carro.new
  	@carros = Carro.order(:created_at).paginate(:page => params[:page], :per_page => 4)
  end

  def create
  	@carro = Carro.new(params[:carro])
  	if @carro.save
  		redirect_to root_path, :notice => "Seu veículo foi anunciado com sucesso"
  	end
  end
  
end
