class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :consultations, dependent: :destroy
  has_many :daycares, foreign_key: :supplier_id, dependent: :destroy
  enum category: {
    client: 1,
    supplier: 2
  }
end
