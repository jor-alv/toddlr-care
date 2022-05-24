class Tag < ApplicationRecord
  has_many :daycare_tags, dependent: :destroy
  has_many :daycares, through: :daycare_tags
end
