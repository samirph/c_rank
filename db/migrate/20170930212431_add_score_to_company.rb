class AddScoreToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :score, :decimal
  end
end
