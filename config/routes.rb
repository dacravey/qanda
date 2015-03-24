Rails.application.routes.draw do
  root :to => 'questions#index'
  devise_for :users do
    resources :questions
  end
  
  resources :questions do
    resources :responses, :except => [:show, :index]
  end
end
