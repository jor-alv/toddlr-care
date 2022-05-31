class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, foreign_key: :client_id,  dependent: :destroy
  has_many :consultations, foreign_key: :client_id, dependent: :destroy
  has_many :daycares, foreign_key: :supplier_id, dependent: :destroy
  has_many_attached :photos
  acts_as_favoritor
  enum category: {
    client: 1,
    supplier: 2
  }

  def admin_consultations
    admin_consultations = []
    self.daycares.each do |daycare|
      admin_consultations << daycare.consultations
    end
    return admin_consultations
  end

  def admin_pending_consultations
    pending_consultations = []
    self.daycares.each do |daycare|
      daycare.consultations.pending.each do |consultation|
        pending_consultations << consultation
      end
    end
    return pending_consultations
  end

  def admin_confirmed_consultations
    confirmed_consultations = []
    self.daycares.each do |daycare|
      daycare.consultations.confirmed.each do |consultation|
        confirmed_consultations << consultation
      end
    end
    return confirmed_consultations
  end

  def client_reviews
    reviews = self.reviews
  end
end
