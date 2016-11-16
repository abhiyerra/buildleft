Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"


  get 'about', to: "home#about", as: :about

  resources :help_centers do
    get 'donate'
  end

  resources :users do

  end
end
