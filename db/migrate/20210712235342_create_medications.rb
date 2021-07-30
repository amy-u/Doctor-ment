class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :quantity
      t.text :notes
      t.string :start_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
