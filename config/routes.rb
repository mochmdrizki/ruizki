Rails.application.routes.draw do
  root 'articles#index', as: 'articles_index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :articles do
  	resources :comments
  end
  get 'tags/:tag', to: 'articles#index', as: :tag
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
