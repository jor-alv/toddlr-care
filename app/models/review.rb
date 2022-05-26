class Review < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: :client_id
  belongs_to :daycare

  validates :stars, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0,
                                    less_than_or_equal_to: 5 }
end
