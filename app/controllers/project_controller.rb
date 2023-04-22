class ProjectController < ApplicationController
  before_action :get_project, only: %i[show edit update destroy]

  def index
  end

  def show
    render json: @project
  end

  private

  def get_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title)
  end
end
