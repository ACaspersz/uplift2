class Comment < ApplicationRecord
  has_one :cause
  belongs_to :user
end
