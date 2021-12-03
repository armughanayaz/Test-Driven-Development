class AddOtherForeignKeys < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :customerId, :bigint
    add_foreign_key :interventions, :customers, column: :customerId, primary_key: 'id'
  end
end
