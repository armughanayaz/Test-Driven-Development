class AddForeignKeyToBatteryIdInIntervention < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions,  :batterieId, :bigint
    add_foreign_key :interventions, :batteries, column: :batterieId, primary_key: 'id'
  end
end
