class CreateDaycaresTags < ActiveRecord::Migration[6.1]
  def change
    create_table :daycares_tags do |t|

      t.timestamps
    end
  end
end
