class AddColumnsToLegislator < ActiveRecord::Migration[5.0]
  def change
    add_column :legislators, :date_of_birth, :string
    add_column :legislators, :next_election, :string
    add_column :legislators, :total_votes, :integer
    add_column :legislators, :missed_votes, :integer
    add_column :legislators, :office, :string
    add_column :legislators, :phone, :string
    add_column :legislators, :votes_with_party_pct, :float
    add_column :legislators, :twitter_account, :string
    add_column :legislators, :facebook_account, :string
    add_column :legislators, :youtube_account, :string
    add_column :legislators, :govtrack_id, :string
    add_column :legislators, :votesmart_id, :string
  end
end
