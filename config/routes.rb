Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'products#index'

get '/products' => 'products#index'

resources :order_items

resource :carts, only: [:show]
post 'carts/checkout' => 'carts#checkout'

resources :bookings 
  namespace 'admin' do
  	root to: redirect('/admin/bookings')
    resources :bookings do
      member do
        patch :set_as_paid
        patch :set_as_unpaid
      end 
    end
    resources :products do
      member do
        delete :destroy_photo
      end 
    end

    resources :categories
    resources :snippets

  end

end
