class AddNumberOfChildrenToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :number_of_children, :integer
  end
end
