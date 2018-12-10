class AddUrlAndUidToVoters < ActiveRecord::Migration[5.2]
  def change
    add_column :voters, :image, :string
    add_column :voters, :uid, :integer
  end
end
