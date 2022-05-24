class CreateDaycares < ActiveRecord::Migration[6.1]
  def change
    create_table :daycares do |t|
      t.string :address
      t.string :name
      t.float :rating
      t.text :description
      t.integer :price
      t.integer :number_of_openings
      t.date :opening_date

      t.timestamps
    end
  end
end
