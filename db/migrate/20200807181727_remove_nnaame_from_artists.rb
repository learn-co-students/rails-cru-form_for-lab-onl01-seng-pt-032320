class RemoveNnaameFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :naame, :string
  end
end
