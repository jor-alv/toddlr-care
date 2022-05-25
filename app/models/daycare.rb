class Daycare < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :consultations, dependent: :destroy
  belongs_to :supplier, class_name: 'User', foreign_key: :supplier_id
  has_many :daycare_tags, dependent: :destroy
  has_many :tags, through: :daycare_tags

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
