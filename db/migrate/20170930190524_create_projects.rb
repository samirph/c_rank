class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :simec_id
      t.string :name
      t.string :status
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :address
      t.string :term
      t.string :term_end
      t.string :term_status
      t.string :percentual
      t.date :expected_date
      t.string :education_date
      t.string :project_type
      t.string :build_type
      t.string :project_classification
      t.decimal :value_by_fnde
      t.string :education_network
      t.string :cnpj
      t.string :state_registration
      t.string :entity_name
      t.string :social_name
      t.string :email
      t.string :abbreviation
      t.string :comercial_phone
      t.string :cep
      t.string :address_entity
      t.string :entity_complement
      t.string :entity_number
      t.string :entity_neighborhood
      t.string :entity_state
      t.string :bidding_modality
      t.string :bidding_number
      t.string :bidding_approval
      t.string :company
      t.string :company_id
      t.datetime :contract_signed_at
      t.string :deadline
      t.datetime :contract_end
      t.decimal :contract_value
      t.string :inspection_status
      t.decimal :amount_paid
      t.decimal :percentual_paid
      t.timestamps
    end
  end
end
