class Cause < ApplicationRecord
    belongs_to :business, dependent: :destroy
    has_many :donations
    has_many :comments, dependent: :destroy
    has_one_attached :picture
end
