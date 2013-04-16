class AddUniqueUrlToClips < ActiveRecord::Migration
  def change
    add_column :clips, :unique_url, :string
  end
end
