class CreatePays < ActiveRecord::Migration[5.1]
  def change
    create_table :pays do |t|
      t.string :payable
      t.integer :cost
      t.references :expend, foreign_key: true

      t.timestamps
    end
  end
end
