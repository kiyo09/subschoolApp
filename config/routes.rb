Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'subschools#top'
  resources :subschools, only: [:index, :show, :new, :create] do
    resources :reviews, only: :create    
  end
end
