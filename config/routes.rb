Rails.application.routes.draw do
  # cocktails => index / show / new / create
  resources :cocktails, only: [:show, :new, :create, :index] do
    # para eu estar no new e no create do dose eu PRECISO
    # do id do cocktail
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  root to: 'cocktails#index'
end