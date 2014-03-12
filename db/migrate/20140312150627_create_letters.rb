class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :titel
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
