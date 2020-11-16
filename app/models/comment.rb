class Comment < ApplicationRecord
  belongs_to :cause
  belongs_to :user
end
