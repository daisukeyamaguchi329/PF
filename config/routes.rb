Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :users, only: %i[show edit update]

  get 'users/quit' => 'users#quit'
  get 'users/out' => 'users#out'
  resources :posts, only: %i[find index show new create edit update destroy] do
    collection do
      get 'search'
    end

    resources :reviews, only: %i[index new create edit update destroy]
    resources :favorites, only: %i[show create destroy]
  end

  get 'favorites', to: 'favorites#index'
  # resources :favorites, only: [:show]

  resources :contacts, only: %i[new create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
