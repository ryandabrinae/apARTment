class AddTypeNumberToFurnitures < ActiveRecord::Migration[5.0]
  def change
    add_column :furnitures, :type_number, :string
  end
end
