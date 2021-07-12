class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :number
      t.string :hospital_name
      t.text :address
      t.resources :user

      t.timestamps
    end
  end
end
