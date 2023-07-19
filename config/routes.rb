Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'my_blogs', to: 'blogs#current_user_blogs'
end