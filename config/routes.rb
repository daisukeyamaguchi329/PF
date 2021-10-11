Rails.application.routes.draw do

  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'homes#top'


  resources :users, only: [:show, :edit, :update]
  get 'users/quit' => 'users#quit'
  get 'users/out' => 'users#out'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
    resources :reviews, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :favorites, only: [:index,:create, :destroy]
  end

  resources :contacts, only: [:new, :create]
  get 'contacts/tnanks' => 'contacts#thanks'
end
