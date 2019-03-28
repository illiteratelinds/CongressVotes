class AddMemberIdToLegislators < ActiveRecord::Migration[5.0]
  def change
    add_column :legislators, :member_id, :string
  end
end
