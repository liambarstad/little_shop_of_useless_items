class AddPlatformAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :platform_admin, :boolean, :default => false
  end
end
