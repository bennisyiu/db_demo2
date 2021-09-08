Rails.application.routes.draw do
  resources :students, only: [ :index ]
  resources :teachers, only: [ :index ]
  resources :courses, only: [ :index, :show, :new, :create ]
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :courses, only: [ :index, :show ]
    end
  end
end
