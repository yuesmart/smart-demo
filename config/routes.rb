Rails.application.routes.draw do
  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  resources :tags, only: [:index, :show]
  root 'posts#index'
end
