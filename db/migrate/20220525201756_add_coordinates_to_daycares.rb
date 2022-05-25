class AddCoordinatesToDaycares < ActiveRecord::Migration[6.1]
  def change
    add_column :daycares, :latitude, :float
    add_column :daycares, :longitude, :float
  end
end
