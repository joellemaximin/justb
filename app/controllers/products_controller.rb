class ProductsController < ApplicationController
def index
	@order_item = current_order.order_items.new
	@products = Product.order(title: :asc)
	if params[:category_id]
		@products = @products.where(category_id: params[:category_id])
	end
	
end



	private 

	def set_all_products
		@products = Product.all.order(title: :asc)
	end

end