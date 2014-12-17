Rails.application.routes.draw do
	resources :entries, except: [ :new, :show ]
	resources :planes
	root to: 'entries#index'
end
