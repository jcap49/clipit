class AddGodModeToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :god_mode, :boolean
  end
end
