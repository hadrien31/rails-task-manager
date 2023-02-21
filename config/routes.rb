Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  get 'tasks', to:"tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task
  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
end
