class Daycare < ApplicationRecord
  has_many :reviews
  has_many :consultations
end
