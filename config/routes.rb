Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get 'about', to: "home#about", as: :about

  resources :help_centers do
    collection do
      get 'search'
    end
    member do
      get 'donate'
    end
  end

  resources :volunteers do

  end
end
