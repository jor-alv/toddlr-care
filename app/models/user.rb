class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validate :name_validations

  enum status: {
    parent: 1,
    admin: 2
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
