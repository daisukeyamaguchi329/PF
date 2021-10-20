Rails.application.routes.draw do

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
    resources :favorites, only: [:index, :create, :destroy]
  end

  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
