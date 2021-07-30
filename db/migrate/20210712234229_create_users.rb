class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :number
      t.text :photo
      t.text :allergic
      t.text :member_ID

      t.timestamps
    end
  end
end
