class AddStatusToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :status, :integer
  end
end
