class ChangeGallonsColumnOnFillUps < ActiveRecord::Migration[5.1]
  def change
    change_column :fill_ups, :gallons, :float
  end
end
