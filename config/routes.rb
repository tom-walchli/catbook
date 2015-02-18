Rails.application.routes.draw do
  devise_for :cats, :controllers => { registrations: 'registrations' }  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'cats#index'

  # post 'authenticate' => "cats#authenticate"

  # get 'edit_cat_user' => "cats#edit_cat_user" , as: 'edit_cat_user'
  # get '/login' => "cats#login"

  resources :cats, only: [:index,:show,:edit,:update]

  scope :api do
  	get '/random' 	=> "cats#random"
  	get '/cats' 	=> "cats#api_index"
  	get '/cats/:id' => "cats#api_show"
  end

end
