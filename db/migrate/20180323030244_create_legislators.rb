class CreateLegislators < ActiveRecord::Migration[5.0]
  def change
    create_table :legislators do |t|

      t.timestamps
    end
  end
end
