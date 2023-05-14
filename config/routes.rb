Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/races", to: "races#index"
  get "/races/new", to: "races#new"
  post "/races", to: "races#create"
  get "/races/:id", to: "races#show"
  get "/runners", to: "runners#index"
  get "/runners/:id", to: "runners#show"
  get "races/:id/runners", to: "races_runners#index"
  
end
