class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def new
		@tag = Tag.new
	end

	def show
		@tag = Tag.find(params[:identification])
	end

	def edit
		@tag = Tag.find(params[:identification])
	end

	def create
		@tag = Tag.new(tag_params)

		if @tag.save
			# redirect_to @tag
		else
			# render 'new'
		end		
	end

	def update
		@tag = Tag.find(params[:identification])

		if @tag.update(tag_params)
			# redirect to @tag
		else
			# render 'edit'
		end
	end

	def destroy
		@tag = Tag.find(params[:identification])
		@tag.destroy

		# redirect_to tags_path
	end

	private
		def tag_params
			params.require(:tag).permit(:identification, :descricao)
		end
end
