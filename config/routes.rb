Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/laptops" => "laptops#index"
  post "/laptops" => "laptops#create"
  get "/laptops/:id" => "laptops#show"
  post "/laptops/:id" => "laptops#update"
  delete "/laptops/:id" => "laptops#destroy"
  delete "/laptops" => "laptops#destroyall"
end
