class AddSlugToClipTable < ActiveRecord::Migration
  def change
    add_column :clips, :slug, :string
  end
end
