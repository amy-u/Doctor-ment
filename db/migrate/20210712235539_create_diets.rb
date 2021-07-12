class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.text :photo
      t.text :description
      t.string :meal_time
      t.resources :user

      t.timestamps
    end
  end
end
