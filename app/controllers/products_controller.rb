class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@categories = Product.joins(:categories)
	end

	def create
		new_product = Product.create(product_params)
		category_tags = params[:category]
		new_product.categories << category_tags
		redirect_to product_path(new_product.id)
	end

	def show
		id = params[:id]
		@product = Product.find(id)
		@categories = @product.categories
		render :show
	end
	
	def edit
		id = params[:id]
		@product = Product.find(id)
		@categories = @product.categories
	end

	def update
		id = params[:id]
		product = Product.find(id)
		product.update(product_params)
		redirect_to product_path(product.id)
	end

	def destroy
		id = params[:id]
		product = Product.find(id)
		product.destroy
		redirect_to product_path
	end

	private
	def product_params
		params.require(:product).permit(:name, :description)
	end

	def category_params
		params.require(:category).permit(:category)
	end

end
