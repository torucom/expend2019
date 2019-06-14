class CreateExpends < ActiveRecord::Migration[5.1]
  def change
    create_table :expends do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
