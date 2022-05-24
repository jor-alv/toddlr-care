class Daycare < ApplicationRecord
  has_many :reviews
  has_many :consultations
  belongs_to :supplier, 'User', foreign_key: :supplier_id
  has_many :daycare_tags, dependent: :destroy
  has_many :tags, through: :daycare_tags
end
