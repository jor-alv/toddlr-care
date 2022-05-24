class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validate :first_last_company_name

  def first_last_company_name
    if first_name.present? && last_name.present?
      validates :first_name, :last_name, presence: true
      validates :company_name, absence: true
    else
      validates :company_name, presence: true
      validates :first_name, :last_name, absence: true
    end
  end
end
