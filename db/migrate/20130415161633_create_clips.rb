class CreateClips < ActiveRecord::Migration
  def change
    add_column :clips do |t|
      t.string      :title
      t.string      :body
      t.url         :song

      t.timestamps
    end
  end
end
