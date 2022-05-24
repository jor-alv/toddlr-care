class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :consultations
  validate :name_validations

  enum category: {
    client: 1,
    supplier: 2
  }

  def name_validations
    if first_name.present? && last_name.present?
      validates :first_name, :last_name, presence: true
      validates :company_name, absence: true
    else
      validates :company_name, presence: true
      validates :first_name, :last_name, absence: true
    end
  end
end
