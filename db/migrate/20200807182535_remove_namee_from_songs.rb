class RemoveNameeFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :namee, :string
  end
end
