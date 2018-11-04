class Admin::SnippetsController < AdminController
    before_action :set_snippet, only: [:edit, :update]
	
	def index
		@snippets = Snippet.all.order(key: :asc)
	end

	def edit
	end

	def update
		if @snippet.update(snippet_params)
			flash[:notice] = 'Snippet details updated!'
			redirect_to action: 'index'
		else
			render 'edit'
		end
	end

	private
    def snippet_params
    params.require(:snippet).permit(:lang, :body)
    end

    def set_snippet
    @snippet = Snippet.find(params[:id])
    end
end
