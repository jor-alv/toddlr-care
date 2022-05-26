class ChangeTimeToDatetimeInConsultations < ActiveRecord::Migration[6.1]
  def change
    rename_column :consultations, :time, :date_time
    change_column :consultations, :date_time, :datetime
  end
end
