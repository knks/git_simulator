Rails.application.routes.draw do
  root to: 'static_pages#top'
  get 'questions', to: 'questions#index'
  
  namespace :admin do
    resources :questions
  end
end
