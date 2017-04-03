class RenameRoomsArts < ActiveRecord::Migration[5.0]
  def change
    rename_table :rooms_arts, :arts_rooms
  end
end
