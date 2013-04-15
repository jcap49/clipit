class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
