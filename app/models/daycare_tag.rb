class DaycareTag < ApplicationRecord
  belongs_to :tag
  belongs_to :daycare
end
