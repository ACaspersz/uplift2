class Donation < ApplicationRecord
  belongs_to :user
  has_one :cause
end
