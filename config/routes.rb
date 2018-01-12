Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :logs
      resources :goals
      resources :users
    end
  end
end
