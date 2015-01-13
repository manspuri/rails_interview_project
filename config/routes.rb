Rails.application.routes.draw do
	
	resources :listings

  root 'welcome#index'

end
