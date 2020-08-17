# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/secretroom', as: 'rails_admin'
  devise_for :users
  root to: 'welcome#index'
  namespace :api, defaults: { format: :json } do
    post 'login', to: 'auth#login'
    delete 'logout', to: 'auth#logout'
    post 'register', to: 'auth#register'
    get 'user', to: 'auth#user'
    get 'wakeup', to: 'misc#wakeup'
  end
end
