class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :father_name
      t.integer :age
      t.boolean :married
      t.timestamps
    end
  end
end
