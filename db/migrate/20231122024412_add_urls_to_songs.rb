class AddUrlsToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :photo_url, :string
    add_column :songs, :audio_url, :string
  end
end
