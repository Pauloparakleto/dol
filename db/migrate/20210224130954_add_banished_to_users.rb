class AddBanishedToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :banished, :integer, null: false, default: 0 
  end
end
