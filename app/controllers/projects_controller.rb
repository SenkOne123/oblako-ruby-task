class ProjectsController < ApplicationController
  def show
    render json: Project.all
  end
  def create
    Project.create(
      title: params[:title]
    )
  end
end
