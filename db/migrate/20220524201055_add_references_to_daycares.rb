class AddReferencesToDaycares < ActiveRecord::Migration[6.1]
  def change
    add_reference :daycares, :supplier, null: false, foreign_key: { to_table: :users }
  end
end
