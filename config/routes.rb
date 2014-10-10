Rails.application.routes.draw do
	resources :entries
	resources :planes
	root to: 'entries#index'
end
