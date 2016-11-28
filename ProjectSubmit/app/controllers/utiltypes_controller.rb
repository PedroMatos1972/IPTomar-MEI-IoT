class UtiltypesController < ApplicationController
	def index
		@utiltypes = Utiltype.all
	end

	def new
		@utiltype = Utiltype.new
	end

	def show
		@utiltype = Utiltype.find(params[:id])
	end

	def edit
		@utiltype = Utiltype.find(params[:id])
	end

	def create
		@utiltype = Utiltype.new(utiltype_params)

		if @utiltype.save
			# redirect_to @utiltype
		else
			# render 'new'
		end		
	end

	def update
		@utiltype = Utiltype.find(params[:id])

		if @utiltype.update(utiltype_params)
			# redirect to @utiltype
		else
			# render 'edit'
		end
	end

	def destroy
		@utiltype = Utiltype.find(params[:id])
		@utiltype.destroy

		# redirect_to utiltypes_path
	end

	private
		def utiltype_params
			params.require(:utiltype).permit(:id, :descricao)
		end
end
