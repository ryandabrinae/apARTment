class AddPlacesToRooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :rooms, :place, foreign_key: true
  end
end
