class CreatePartOfCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :part_of_characteristics do |t|
      t.references :characteristic, foreign_key: true, null: false
      t.integer :pid, null: false
      t.string :part_name, null: false
      t.boolean :weight, null: false
      t.float :default_weight, null: false
      t.timestamps
    end
  end
end
