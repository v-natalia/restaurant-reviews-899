Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      # don't take :id
      get :top
    end

    member do
      # take :id
      get :chef
    end
  end
  resources :reviews, only: [:destroy]
end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# GET /restaurants/42
# GET /restaurants/top
# GET /restaurants/42/chef
