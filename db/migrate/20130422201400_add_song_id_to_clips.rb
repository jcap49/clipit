class AddSongIdToClips < ActiveRecord::Migration
  def change
    add_column :clips, :song_id, :string
  end
end
