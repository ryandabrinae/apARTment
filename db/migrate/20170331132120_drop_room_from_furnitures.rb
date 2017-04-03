class DropRoomFromFurnitures < ActiveRecord::Migration[5.0]
  def change
    remove_column :furnitures, :room_id
  end
end
