class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end
