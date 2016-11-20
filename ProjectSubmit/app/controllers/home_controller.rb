class HomeController < ApplicationController
	include ProjetosHelper

  def index
  	@projectname = 'Project Submit'
  	@itemMenu = ["inicio", "acerca", "equipa", "portfolio"]
  	@teamdev = ["Nelson Gomes", "Miguel Coelho", "Paulo Rodrigues", "Pedro Dias", "Pedro Matos", "Pedro Nunes", "Vasco Marques"]

  	@projetosall = allProjetos

  end
end
