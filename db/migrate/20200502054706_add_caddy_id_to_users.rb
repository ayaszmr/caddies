class AddCaddyIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :caddy_id, :integer
  end
end
