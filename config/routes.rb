Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resource :likes, only: %i[create destroy]
  end
end
