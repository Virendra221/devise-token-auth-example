class AddCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :count, :integer, :default => 1
  end
end
