class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
      t.string :username
      t.string :password_digest
      t.string :party
      t.integer :age
      t.integer :dollars
      t.boolean :admin

      t.timestamps
    end
  end
end
