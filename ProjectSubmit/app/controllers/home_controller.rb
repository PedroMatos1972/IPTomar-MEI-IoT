class HomeController < ApplicationController
  def index
  	@projectname = 'Project Submit'
  	@itemMenu = ["Projetos", "Acerca", "Contatos"]
  end
end
