Rails.application.routes.draw do
  resources :feeds
  resources :sessions, only: [:new, :create, :destroy]  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  resources :users, only: [:new, :create, :show]
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
