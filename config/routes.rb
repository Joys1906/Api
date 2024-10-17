Rails.application.routes.draw do
  resources :books
  resources :spells
  
  # Define the routes for houses
  resources :houses do
    resources :characters, only: [:index] # Esto permite obtener personajes de una casa específica
  end
  
  # Mantén la ruta global para characters si es necesario
  resources :characters
  
  devise_for :users

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path (descomentarlo si deseas usarlo)
  # root "posts#index"
end
