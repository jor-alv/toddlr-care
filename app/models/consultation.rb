class Consultation < ApplicationRecord
  belongs_to :client, 'User', foreign_key: :client_id
  belongs_to :daycare
end
