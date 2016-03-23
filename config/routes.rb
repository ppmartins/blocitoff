Rails.application.routes.draw do

  devise_for :users
#  get 'users/show'

  as :user do
    get 'users', :to => 'users#show', :as => :user_root
  end

  get 'welcome/index'

  root 'welcome#index'


end
