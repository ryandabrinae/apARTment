class AddStatusToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :status, :string
  end
end
