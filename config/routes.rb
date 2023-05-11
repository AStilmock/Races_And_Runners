Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/races", to: "races#index"
  get "/races/:id", to: "races#show"
  get "/runners", to: "runners#index"
end
