class RemoveTypeOfFurnitureFromFurnitures < ActiveRecord::Migration[5.0]
  def change
    remove_column :furnitures, :type_of_furniture
    remove_column :rooms, :type_of_room

    add_column :furnitures, :type_of_furniture, :string
    add_column :rooms, :type_of_room, :string
  end
end
