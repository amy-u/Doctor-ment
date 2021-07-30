class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.text :photo
      t.text :description
      t.string :meal_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
