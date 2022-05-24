class ChangeStatusToCategoryInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :status, :category
  end
end
