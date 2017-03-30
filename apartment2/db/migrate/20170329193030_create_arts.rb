class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.belongs_to :user
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :color4
      t.string :color5
      t.string :color6
      t.string :maker
      t.string :year
      t.string :img_url
      t.string :API_id

      t.timestamps
    end
  end
end
