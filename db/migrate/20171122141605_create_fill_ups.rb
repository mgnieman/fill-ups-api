class CreateFillUps < ActiveRecord::Migration[5.1]
  def change
    create_table :fill_ups do |t|
      t.date :date
      t.integer :mileage
      t.integer :gallons
      t.integer :mpg
      t.integer :price

      t.timestamps
    end
  end
end
