Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :users, only: [:show] do
    resources :items
  end

  get 'welcome/index'

  root 'welcome#index'

end
