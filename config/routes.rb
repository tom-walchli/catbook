Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'cats#index'

  post 'authenticate' => "cats#authenticate"

  get 'edit_cat_user' => "cats#edit_cat_user" , as: 'edit_cat_user'
  get '/login' => "cats#login"

  resources :cats
end
