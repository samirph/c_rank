class CreateOverdueProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :overdue_projects do |t|
      t.integer :simec_id
      t.string :status
      t.timestamps
    end
  end
end
