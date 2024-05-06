Rails.application.routes.draw do
  namespace :admin do
    resources :blogs
  end
  devise_for :admin_users, controllers: { sessions: "admin_users/sessions", registerations: "admin_users/registerations" }
  resources :categories
  resources :products #, constraints: { id: /[A-Z][A-Z][0-9]+/ }
  resources :people
  resources :id_cards
  resources :authors
  resources :books do
    member do
      get :show_book
    end
    collection do
      get :new_book
    end
  end

  concern :commentable do
    resources :comments
  end

  concern :image_attachable do
    resources :images, only: :index
  end

  resources :messages, concerns: [:commentable, :image_attachable]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :author

  get 'book/create', to: 'book#create', as: 'bookk'

  resources :article, shallow: true do
    resources :comments
    resources :quotes
  end

  resources :puzzels do
    member do
      get :show_completed
    end
  end

end
