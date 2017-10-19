class Company < ApplicationRecord
  validates :cnpj, uniqueness: true
  has_many :projects

  def update_score
    company = self
    project_simec_ids = Project.where(company_id: company.id).pluck(:simec_id)
    inspection_count = Inspection.where(project_id: project_simec_ids).count
    project_count = Project.where(company_id: company.id).count
    late_project_count = OverdueProject.where(status: 'atrasada', simec_id: project_simec_ids).count
    score = project_count + 1 - late_project_count
    inspection_count.times do
      score *= 0.95
    end
    company.update(score: score)
  end

  def update_monthly_score
    company = self
    project_ids = Project.where('company_id = ? AND contract_signed_at > ?', company.id, DateTime.now - 6.months).pluck(:simec_id)
    inspection_count = Inspection.where(project_id: project_ids).count
    project_count = project_ids.size
    score = project_count + 1
    inspection_count.times do
      score *= 0.95
    end
    company.update(score: score)
  end
end
