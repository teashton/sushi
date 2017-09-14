class CreateSushiRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :sushi_rolls do |t|
      t.string :name
      t.float :price
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
