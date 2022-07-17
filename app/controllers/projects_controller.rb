class ProjectsController < ApplicationController
  def show
    render json: Project.all
  end
end
