class ProjectsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render json: { message: "ok" }}
    end
  end
end
