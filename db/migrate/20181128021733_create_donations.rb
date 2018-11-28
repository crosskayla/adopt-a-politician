class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :dollars
      t.string :description
      t.string :url
      t.integer :voter_id
      t.integer :politician_id

      t.timestamps
    end
  end
end
