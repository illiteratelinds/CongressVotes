class CreateLegislators < ActiveRecord::Migration[5.0]
  def change
    create_table :legislators do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :party
      t.string :state
      t.string :title
      t.string :chamber
      t.date :term_start
      t.date :term_end
      t.decimal :missed_votes_pct

      t.timestamps
    end
  end
end
