class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
	end

	def create
		new_category = Category.create(category_params)
		redirect_to category_path(new_category.id)
	end

	def show
		id = params[:id]
		@category = Category.find(id)
		@products = @category.products
		render :show
	end

	def edit
		id = params[:id]
		@category = Category.find(id)
	end

	def update
		id = params[:id]
		category = Category.find(id)
		category.update(category_params)
		redirect_to category_path(category.id)
	end

	def destroy
		id = params[:id]
		category = Category.find(id)
		category.destroy
		redirect_to categories_path
	end

	private
	def category_params
		params.require(:category).permit(:name, :description)
	end

end
