class Business < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :causes
    has_one_attached :picture
    
end
