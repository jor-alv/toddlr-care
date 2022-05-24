class AddReferencesToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_reference :consultations, :client, null: false, foreign_key: { to_table: :users }
    add_reference :consultations, :daycare, null: false, foreign_key: true
  end
end
