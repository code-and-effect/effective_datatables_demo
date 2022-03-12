Rails.application.routes.draw do
  acts_as_archived

  resources :users, only: :index
  resources :charts, only: :index

  resources :posts, only: [:index, :show, :edit, :update] do
    collection do
      post :bulk_publish
      post :bulk_unpublish
    end
  end

  resources :things, concerns: :acts_as_archived do
    post :approve, on: :member
    post :reject, on: :member
  end

  root to: 'users#index'
end
