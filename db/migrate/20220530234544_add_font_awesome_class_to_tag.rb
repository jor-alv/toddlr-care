class AddFontAwesomeClassToTag < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :font_awesome, :string
  end
end
