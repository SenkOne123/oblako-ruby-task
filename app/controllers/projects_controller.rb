class ProjectsController < ApplicationController
=begin
  def index
    respond_to do |format|
      format.html { render json: { message: "ok" }}
    end
  end
=end
  def show
    @projects = Project.all
    render json: @projects
  end
end
