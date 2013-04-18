class Clips < ActiveRecord::Migration
  def up
    add_column :clips, :song, :string
  end

  def down
    remove_column :clips, :song, :string
  end
end
