class CreateCharacteristicValues < ActiveRecord::Migration[5.1]
  def change
    create_table :characteristic_values do |t|
      t.references :part_of_characteristic, foreign_key: true
      t.string :value, null: false
      t.references :person, foreign_key: true
      t.date :vdate, null: false
      t.time :vtime, null: false

      t.timestamps
    end
  end
end
