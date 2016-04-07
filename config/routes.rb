Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  get 'welcome/index'

  root 'welcome#index'

end
