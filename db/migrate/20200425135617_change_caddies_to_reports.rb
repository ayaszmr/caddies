class ChangeCaddiesToReports < ActiveRecord::Migration[5.0]
  def change
    rename_table :caddies, :reports
  end
end
