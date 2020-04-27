class RemoveNameFromReports < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :name, :string
  end
end
