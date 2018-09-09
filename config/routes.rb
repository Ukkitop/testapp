Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :tasks
  resources :users
  resources :projects

  root 'projects#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
