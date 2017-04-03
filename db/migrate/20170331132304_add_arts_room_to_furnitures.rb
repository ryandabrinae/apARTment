class AddArtsRoomToFurnitures < ActiveRecord::Migration[5.0]
  def change
    add_reference :furnitures, :arts_room, foreign_key: true
  end
end
