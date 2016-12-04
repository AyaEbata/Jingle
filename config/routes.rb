Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#index'
	get '/search', to: 'books#search'

	get '*path', to: 'application#render_500'
end
