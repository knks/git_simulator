Rails.application.routes.draw do
  root to: 'questions#index'
  get 'questions', to: 'questions#index'
  
  namespace :admin do
    resources :questions
  end
end
