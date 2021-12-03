class AddForeignKeyToBuildingIdInIntervention < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :buildingId, :bigint
    add_foreign_key :interventions, :buildings, column: :buildingId, primary_key: 'id'
  end
end
