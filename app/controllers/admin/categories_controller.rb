class Admin::CategoriesController < AdminController
	before_action :set_category, only:[:edit, :update]

def index
	@categories = Category.all
end

def new
	@category = Category.new
	
end

def create
	Category.create!(category_params)
	redirect_to admin_categories_path
end

def edit
end

def update
	if @category.update(category_params)
	    flash[:notice] = "Updated"
		redirect_to action: 'index'
	else 
		render 'edit'
	end
end


private

	def category_params
		params.require(:category).permit(:title)
	end

	def set_category
		@category = Category.find(params[:id])
		
	end
end
