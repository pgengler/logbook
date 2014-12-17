Rails.application.routes.draw do
	resources :entries, except: [ :new ]
	resources :planes
	root to: 'entries#index'
end
