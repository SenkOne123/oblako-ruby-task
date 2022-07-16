class TodosController < ApplicationController
  def create
    Todo.create(
      text: params[:text],
      isCompleted: params[:isCompleted],
      project_id: params[:project_id]
    )
  end
end