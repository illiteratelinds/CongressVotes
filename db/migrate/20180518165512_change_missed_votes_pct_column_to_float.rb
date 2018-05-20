class ChangeMissedVotesPctColumnToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :legislators, :missed_votes_pct, :float
  end
end
