class CreateInspections < ActiveRecord::Migration[5.1]
  def change
    create_table :inspections do |t|
      t.integer :project_id
      t.string :status
      t.string :comment
      t.timestamps
    end
  end
end
