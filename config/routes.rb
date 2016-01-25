Rails.application.routes.draw do
  
  resources :articles do
  	resources :customers
  	resources :employees
  end
  
end
