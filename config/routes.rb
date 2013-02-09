Recommender::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  resources :events

  devise_for :users
  resources :users
end
