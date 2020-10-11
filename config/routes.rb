Rails.application.routes.draw do
  
  
  
  resources :families do 
    resources :rental_items 
  end 

  resources :rental_items 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
