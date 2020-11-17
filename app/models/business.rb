class Business < ApplicationRecord
    belongs_to :user
    has_many :causes
    has_one_attached :picture
    
end
