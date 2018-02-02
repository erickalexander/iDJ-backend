Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :instructors
      resources :students
      resources :reservations
      resources :sessions
      post '/auth', to: 'auth#create'
    end
  end
end
