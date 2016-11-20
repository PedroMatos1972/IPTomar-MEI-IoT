class ProjetosController < ApplicationController

	def index
		@projetos = Projeto.all
	end

	def new
		@projeto = Projeto.new
	end

	def create
		@projeto = Projeto.new(projeto_params)

		if @projeto.save
			# redirect_to @projeto
		else
			# render 'new'
		end		
	end


	private
		def article_params
			params.require(:projeto).permit(:titulo, :resume)
		end
end
