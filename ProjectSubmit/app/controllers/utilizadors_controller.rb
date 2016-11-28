class UtilizadorsController < ApplicationController
	def index
		@utilizadors = Utilizador.all
	end

	def new
		@utilizador = Utilizador.new
	end

	def show
		@utilizador = Utilizador.find(params[:id])
	end

	def edit
		@utilizador = Utilizador.find(params[:id])
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
		@utilizador = Utilizador.find(params[:id])

		if @utilizador.update(utilizador_params)
			# redirect to @utilizador
		else
			# render 'edit'
		end
	end

	def destroy
		@utilizador = Utilizador.find(params[:id])
		@utilizador.destroy

		# redirect_to utilizadors_path
	end

	private
		def utilizador_params
			params.require(:utilizador).permit(:id, :name, :email, :type, :photo)
		end
end
