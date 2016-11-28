class AulasController < ApplicationController
	def index
		@aulas = Aula.all
	end

	def new
		@aula = Aula.new
	end

	def show
		@aula = Aula.find(params[:identification])
	end

	def edit
		@aula = Aula.find(params[:identification])
	end

	def create
		@aula = Aula.new(aula_params)

		if @aula.save
			# redirect_to @aula
		else
			# render 'new'
		end		
	end

	def update
		@aula = Aula.find(params[:identification])

		if @aula.update(aula_params)
			# redirect to @aula
		else
			# render 'edit'
		end
	end

	def destroy
		@aula = Aula.find(params[:identification])
		@aula.destroy

		# redirect_to aulas_path
	end

	private
		def aula_params
			params.require(:aula).permit(:identification, :descricao)
		end
end
