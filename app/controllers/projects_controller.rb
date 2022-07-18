class ProjectsController < ApplicationController

  skip_before_action :verify_authenticity_token # Temporarily to check the POST and PATCH requests

  def show
    render json: Project.all.as_json(include: :todos)
  end

  def create
    Project.create(
      title: params[:title]
    )
  end

end