Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      post '/customers/:customer_id/subscriptions', to: 'subscriptions#create'
      patch '/customers/:customer_id/subscriptions/:subcription_id', to: 'subscriptions#update'
      get '/customers/:customer_id', to: 'customers#show'
    end
  end
  # post '/api/v1/customers/:id/subscriptions', to: 'subscriptions#create'
end
