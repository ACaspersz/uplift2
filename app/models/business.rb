class Business < ApplicationRecord
    belongs_to :user
    has_many :causes
    has_many_attached :thumbnails
    
end
