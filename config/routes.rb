TEST::Application.routes.draw do
  resources :letters	
  resources :users
  root to: "users#index" # root_path # users_path
end
