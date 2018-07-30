Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do

    collection do
      get 'random', to: "cocktails#random"
    end

    resources :doses, only: [:index, :new, :create]
  end

  resources :doses, only: [:index, :destroy]
end
