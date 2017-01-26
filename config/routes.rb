Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users do
		resources :runs
	end
	get '/runs', to: 'runs#all'
	get '/runs/:id', to: 'runs#one'
end
