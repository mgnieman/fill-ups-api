class AddUserToFillUps < ActiveRecord::Migration[5.1]
  def change
    add_reference :fill_ups, :user, foreign_key: true
  end
end
