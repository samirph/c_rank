class ProjectsController < ApplicationController
  def companies
    @companies = Company.all.order(score: :desc).paginate(:page => params[:page])
  end

  def company
    @company = Company.includes(:projects).find_by(id: params[:id])
    @projects = @company.projects
    @inspections = Inspection.where(project_id: @projects.pluck(:simec_id), status: ['answered', 'accepted','sent'])
  end

  def home

  end

  def company_projects
    projects = Project.where(company_id: params[:id]).group(:status).count
    render json: {projects: projects, labels: projects.keys, values: projects.values}
  end
end
