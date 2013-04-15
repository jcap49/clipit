class AddBodyToClipsTable < ActiveRecord::Migration
  def change
    add_column :clips, :body, :string
  end
end
