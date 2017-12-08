class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :pid, null: false

      t.timestamps
    end
  end
end
