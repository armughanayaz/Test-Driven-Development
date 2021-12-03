class AddNullRestrictionToAuthorInIntervention < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :author, :integer, null: false
  end
end
