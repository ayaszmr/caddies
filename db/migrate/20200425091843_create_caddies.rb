class CreateCaddies < ActiveRecord::Migration[5.0]
  def change
    create_table :caddies do |t|
      t.string :name
      t.integer :caddy_id
      t.integer :bags
      t.timestamps
    end
  end
end
