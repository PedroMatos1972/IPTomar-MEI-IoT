class FicheirosController < ApplicationController
	def index
		@ficheiros = Ficheiro.all
	end

	def new
		@ficheiro = Ficheiro.new
	end

	def show
		@ficheiro = Ficheiro.find(params[:identification])
	end

	def edit
		@ficheiro = Ficheiro.find(params[:identification])
	end

	def create
		@ficheiro = Ficheiro.new(ficheiro_params)

		if @ficheiro.save
			# redirect_to @ficheiro
		else
			# render 'new'
		end		
	end

	def update
		@ficheiro = Ficheiro.find(params[:identification])

		if @ficheiro.update(ficheiro_params)
			# redirect to @ficheiro
		else
			# render 'edit'
		end
	end

	def destroy
		@ficheiro = Ficheiro.find(params[:identification])
		@ficheiro.destroy

		# redirect_to ficheiros_path
	end

	private
		def ficheiro_params
			params.require(:ficheiro).permit(:identification, :descricao, :date, :local)
		end
end
