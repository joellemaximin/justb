module ApplicationHelper
	def show_snippet(key)
		raw Snippet.where(key: key).first!.body
	end

	def current_order
	  if session[:order_id].nil?
	    Order.new
	  else
	    Order.find(session[:order_id])   
	  end
	end

end
