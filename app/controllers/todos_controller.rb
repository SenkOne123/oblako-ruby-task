class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token # Temporarily to check the POST and PATCH requests
  def create
    Todo.create(
      text: params[:text],
      isCompleted: params[:isCompleted],
      project_id: params[:project_id]
    )
  end
  def update
    @todo = Project.find(params[:project_id]).todos.find(params[:todo_id])
    @todo.update(
      text: params[:text],
      isCompleted: params[:isCompleted],
      project_id: params[:project_id]
    )
  end
end