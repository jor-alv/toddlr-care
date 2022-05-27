class Consultation < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: :client_id
  belongs_to :daycare

  enum status: {
    pending: 1,
    confirmed: 2,
    declined: 3,
    cancelled: 4,
    archived: 5
  }
end
