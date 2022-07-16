Rails.application.routes.draw do
  root 'home#index'
  get '/projects', to: 'projects#show'
  post '/todos', to: 'todos#create'
  patch '/projects/:project_id/todo/:todo_id', to: 'todos#update'
end