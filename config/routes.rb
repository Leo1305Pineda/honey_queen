Rails.application.routes.draw do





	scope  defaults: { format: :json }, constraints: { :format => '(json)' }  do
	  resources :almacens , only: [:index, :show, :create, :update,:destroy] 
	  resources :productos, only: [:index, :show, :create, :update,:destroy] 
	  resources :modelos, only: [:index, :show, :create, :update,:destroy] 
	  resources :marcas, only: [:index, :show, :create, :update,:destroy] 
	end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

