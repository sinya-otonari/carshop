class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.references :employee, foreign_key: true
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
