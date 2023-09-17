Rails.application.routes.draw do
  devise_for :logins
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  get "pages/index"
  get '/:id', to: 'pages#site_page'
end
