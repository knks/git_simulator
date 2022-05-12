Rails.application.routes.draw do
  root to: 'static_pages#top'
  get 'questions', to: 'questions#index'
  
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  
  namespace :admin do
    resources :questions
  end
end
