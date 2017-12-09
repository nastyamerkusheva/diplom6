class CreateWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :weights do |t|
      t.string :name, null: false
      t.references :part_of_characteristic, foreign_key: true, null: false
      t.float :weight_val, null: false
      # t.float :default

      t.timestamps
    end
  end
end
