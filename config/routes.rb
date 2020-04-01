Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'subschools#top'
  resources :subschools do
    resources :reviews, only: :create
    resources :tweets, only: [:create, :show, :edit]    
  end
  resources :comments, only: :create
end
