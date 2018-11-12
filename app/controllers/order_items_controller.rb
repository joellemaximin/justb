class OrderItemsController < ApplicationController

def index
	redirect_to action: 'create'
end

def create
	@order = current_order
	@order_item = @order.order_items.new(order_item_params)
	if @order.save
		session[:order_id] = @order.id
	else
		#binding.irb
	    render 'create'
    end

end

def update
	@order_item = current_order.order_items.find(params[:id])
	@order_item.update_attributes(order_item_params)
	@order_items = current_order.order_items
end

def destroy
	@order_item = current_order.order_items.find(params[:id])
	@order_item.destroy
	@order_items = @order.order_items
end

def redirect_to_client
	@order_item = @order.order_items.find(params[:id])

end

private

def order_item_params
	params.require(:order_item).permit(:product_id, :quantity, :first_name, :last_name, :email)
end

end
