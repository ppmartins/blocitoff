Rails.application.routes.draw do

  get 'items/new'

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  get 'welcome/index'

  root 'welcome#index'

end
