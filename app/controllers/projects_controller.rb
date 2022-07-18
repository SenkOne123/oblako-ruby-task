class ProjectsController < ApplicationController
  def show
    render json: Project.all.as_json(include: :todos)
  end
  def create
    Project.create(
      title: params[:title]
    )
  end
end