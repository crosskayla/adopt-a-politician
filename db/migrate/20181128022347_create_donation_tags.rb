class CreateDonationTags < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_tags do |t|
      t.integer :donation_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
