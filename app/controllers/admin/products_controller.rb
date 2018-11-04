class Admin::ProductsController < AdminController
	before_action :set_product, only:[:edit, :update, :destroy, :destroy_photo]

def index
	@products = Product.all.order(title: :desc)
end

def new
	@product = Product.new
	
end

def create
    @product = Product.new(params_product)
	if @product.save
        if params[:images]
         params[:images].each do |image|
          @product.photos.create(picture: image)
          end
        end
        redirect_to action: 'index'
    else
        render 'new'
    end
end

def edit
end

def update
	if @product.update(params_product)
		if params[:images]
        params[:images].each do |image|
          @product.photos.create(picture: image)
          end
        end

	    flash[:notice] = "Updated"
		redirect_to action: 'index'
	else 
		render 'edit'
	end

end

def destroy
	@product.destroy
	flash[:notice] = "Produit deleted"
	redirect_to action: 'index'
	
end

def destroy_photo
    @product.photos.find(params[:product_photo_id]).destroy
    flash[:notice] = 'product deleted.'
    redirect_to action: 'edit'
end

private

	def params_product
		params.require(:product).permit(:title, :category_id, :description, :composition, :price)
	end

	def set_product
		@product = Product.find(params[:id])
	end
end
