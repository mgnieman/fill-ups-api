class ChangePriceColumnOnFillUps < ActiveRecord::Migration[5.1]
  def change
    change_column :fill_ups, :price, :float
  end
end
