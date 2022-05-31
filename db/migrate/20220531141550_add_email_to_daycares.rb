class AddEmailToDaycares < ActiveRecord::Migration[6.1]
  def change
    add_column :daycares, :email, :string
  end
end
