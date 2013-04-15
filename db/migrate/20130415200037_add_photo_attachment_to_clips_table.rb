class AddPhotoAttachmentToClipsTable < ActiveRecord::Migration
  def self.up
    add_attachment :clips, :photo
  end

  def self.down
    remove_attachment :clips, :photo
  end
end
