class AddFinalForeignKeysInIntervention < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions,  :columnId, :bigint
    add_foreign_key :interventions, :columns, column: :columnId, primary_key: 'id'

    change_column :interventions,  :elevatorId, :bigint
    add_foreign_key :interventions, :elevators, column: :elevatorId, primary_key: 'id'

    add_foreign_key :interventions, :employees, column: :employeeId, primary_key: 'id'
  end
end
