class Daycare < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :consultations, dependent: :destroy
  belongs_to :supplier, class_name: 'User', foreign_key: :supplier_id
  has_many :daycare_tags, dependent: :destroy
  has_many :tags, through: :daycare_tags
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search_by_name_address_price_description,
    against: [ :name, :address, :price, :description ],
    using: {
      tsearch: { prefix: true }
    }

  def rating
    rating = 0
    self.reviews.each do |review|
      rating += review.stars
    end
    unless self.reviews.size == 0
      rating = (rating / self.reviews.size)
    end
    return rating
  end

  def add_tags(info)
    info.each do |tag|
      DaycareTag.create!(daycare: self, tag_id: tag) unless tag.empty?
    end
  end
end
