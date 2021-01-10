class Api::V1::ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.all
    render json: ProjectSerializer.new(@projects,options).serialized_json
  end

  # GET /projects/1
  def show
    @project =  Project.find(params[:id])

    render json: ProjectSerializer.new(@project,options).serialized_json
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      render json: ProjectSerializer.new(@project,options).serialized_json
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    @project =  Project.find(params[:id])
    if @project.update(project_params)
      render json:  ProjectSerializer.new(@project,options).serialized_json
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project =  Project.find(params[:id])

    if @project.destroy
      head :no_content
    else
      render json: @project.errors, status: 422
    end    
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:done, :date, :name, :customer)
    end

    def options
      @options ||= {include: %i[tasks]}
    end
   
end
