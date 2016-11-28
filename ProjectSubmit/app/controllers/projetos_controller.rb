class ProjetosController < ApplicationController

	def index
		@projetos = Projeto.all
	end

	def new
		@projeto = Projeto.new
	end

	def show
		@projeto = Projeto.find(params[:identification])
	end

	def edit
		@projeto = Projeto.find(params[:identification])
	end

	def create
		@projeto = Projeto.new(projeto_params)

		if @projeto.save
			# redirect_to @projeto
		else
			# render 'new'
		end		
	end

	def update
		@projeto = Projeto.find(params[:identification])

		if @projeto.update(projeto_params)
			# redirect to @projeto
		else
			# render 'edit'
		end
	end

	def destroy
		@projeto = Projeto.find(params[:identification])
		@projeto.destroy

		# redirect_to projetos_path
	end

	private
		def projeto_params
			params.require(:projeto).permit(:identification, :titulo, :resume, :tag, :date, :class, :school, :users, :file)
		end
end
