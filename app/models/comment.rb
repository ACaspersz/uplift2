class Comment < ApplicationRecord
  belongs_to :cause, dependent: :destroy
  belongs_to :user
end
