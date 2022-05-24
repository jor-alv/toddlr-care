class AddReferencesToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :client, null: false, foreign_key: { to_table: :users }
    add_reference :reviews, :daycare, null: false, foreign_key: true
  end
end
