class Daycare < ApplicationRecord
  has_many :reviews
  has_many :consultations
  belongs_to :supplier, 'User', foreign_key: :supplier_id
end
