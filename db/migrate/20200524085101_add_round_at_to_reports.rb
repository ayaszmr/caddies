class AddRoundAtToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :round_at, :date
  end
end
