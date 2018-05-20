class AddStateIdToLegislators < ActiveRecord::Migration[5.0]
  def change
    add_column :legislators, :state_id, :integer
  end
end
