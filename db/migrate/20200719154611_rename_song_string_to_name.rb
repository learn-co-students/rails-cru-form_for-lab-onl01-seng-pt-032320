class RenameSongStringToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :string, :name
  end
end
