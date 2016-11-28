class UtilizadorsController < ApplicationController
	def index
		@utilizadors = Utilizador.all
	end

	def new
		@utilizador = Utilizador.new
	end

	def show
		@utilizador = Utilizador.find(params[:identification])
	end

	def edit
		@utilizador = Utilizador.find(params[:identification])
	end

	def create
		@utilizador = Utilizador.new(utilizador_params)

		if @utilizador.save
			# redirect_to @utilizador
		else
			# render 'new'
		end		
	end

	def update
		@utilizador = Utilizador.find(params[:identification])

		if @utilizador.update(utilizador_params)
			# redirect to @utilizador
		else
			# render 'edit'
		end
	end

	def destroy
		@utilizador = Utilizador.find(params[:identification])
		@utilizador.destroy

		# redirect_to utilizadors_path
	end

	private
		def utilizador_params
			params.require(:utilizador).permit(:identification, :name, :email, :type, :photo)
		end
end
