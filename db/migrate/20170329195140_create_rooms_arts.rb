class CreateRoomsArts < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms_arts do |t|
      t.belongs_to :room, foreign_key: true
      t.belongs_to :art, foreign_key: true

      t.timestamps
    end
  end
end
