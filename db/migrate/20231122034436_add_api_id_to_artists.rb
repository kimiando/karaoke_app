class AddApiIdToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :api_id, :string
  end
end
