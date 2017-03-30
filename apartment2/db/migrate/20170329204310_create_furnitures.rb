class CreateFurnitures < ActiveRecord::Migration[5.0]
  def change
    create_table :furnitures do |t|
      t.string :type
      t.string :color
      t.belongs_to :room, foreign_key: true

      t.timestamps
    end
  end
end
