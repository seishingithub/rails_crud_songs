class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :band_name
    end
  end
end
