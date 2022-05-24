class CreateDaycareTags < ActiveRecord::Migration[6.1]
  def change
    create_table :daycare_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :daycare, null: false, foreign_key: true

      t.timestamps
    end
  end
end
