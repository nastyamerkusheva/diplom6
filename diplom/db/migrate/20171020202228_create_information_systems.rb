class CreateInformationSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :information_systems do |t|
      t.string :name, null: false
      t.integer :timezone, null: false

      t.index [:name], unique: true
      t.timestamps
    end
  end
end
