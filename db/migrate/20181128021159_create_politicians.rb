class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :party
      t.integer :dollars

      t.timestamps
    end
  end
end
