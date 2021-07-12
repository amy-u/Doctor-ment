class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :quantity
      t.text :notes
      t.string :start_date
      t.resources :user

      t.timestamps
    end
  end
end
