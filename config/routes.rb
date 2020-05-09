Rails.application.routes.draw do
	root 'generate_url#index'
	resources :generate_url
	resources :stats,only: [:index]
	get '/:shorten_url', :to => 'generate_url#show'

end
