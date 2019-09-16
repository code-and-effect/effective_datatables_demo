Rails.application.routes.draw do
  resources :users, only: :index
  resources :charts, only: :index

  resources :posts, only: [:index, :show, :edit] do
    collection do
      post :bulk_publish
      post :bulk_unpublish
    end
  end

  root to: 'users#index'
end
