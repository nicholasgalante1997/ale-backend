Rails.application.routes.draw do
  resources :authors
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :books
      # get 'books/:isbn', to: "books#show"
      resources :user_books
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
