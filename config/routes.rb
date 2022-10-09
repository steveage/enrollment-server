Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: [ :index, :create ]
  resources :semesters, only: [ :index, :create ]
  resources :teachers, only: [ :index, :create ]
  resources :courses, only: [ :index, :create ]
  resources :enrollments, only: [ :index, :create ]
end
