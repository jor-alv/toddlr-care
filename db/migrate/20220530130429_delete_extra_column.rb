class DeleteExtraColumn < ActiveRecord::Migration[6.1]
  def change
    drop_table :daycares_tags
  end
end
