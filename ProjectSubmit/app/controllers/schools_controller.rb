class SchoolsController < ApplicationController

	def index
		@schools = School.all
	end

	def new
		@school = School.new
	end

	def show
		@school = School.find(params[:identification])
	end

	def edit
		@school = School.find(params[:identification])
	end

	def create
		@school = School.new(school_params)

		if @school.save
			# redirect_to @school
		else
			# render 'new'
		end		
	end

	def update
		@school = School.find(params[:identification])

		if @school.update(school_params)
			# redirect to @school
		else
			# render 'edit'
		end
	end

	def destroy
		@school = School.find(params[:identification])
		@school.destroy

		# redirect_to schools_path
	end

	private
		def school_params
			params.require(:school).permit(:identification, :descricao)
		end
end
