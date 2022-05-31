class RenameDatetimeToStarttimeInConsultations < ActiveRecord::Migration[6.1]
  def change
    rename_column :consultations, :date_time, :start_time
  end
end
