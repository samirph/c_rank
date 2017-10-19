class AddMonthlyScoreToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :monthly_score, :decimal
  end
end
