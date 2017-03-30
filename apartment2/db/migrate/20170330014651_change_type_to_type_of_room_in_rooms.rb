class ChangeTypeToTypeOfRoomInRooms < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :type, :type_of_room
    rename_column :furnitures, :type, :type_of_furniture
  end
end
