class CreateCaddies < ActiveRecord::Migration[5.0]
  def change
    create_table :caddies do |t|

      t.timestamps
    end
  end
end
