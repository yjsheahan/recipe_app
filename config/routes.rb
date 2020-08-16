Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :ingredients, only: [ :new, :create, :edit, :update, :destroy ]
    resources :directions, only: [ :new, :create, :edit, :update, :destroy ]
  end

  root to: 'recipes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
