Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/autht', to: 'users#autht'
  resources :users, only: [:index]
end
