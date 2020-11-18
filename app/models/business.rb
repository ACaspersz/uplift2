class Business < ApplicationRecord
    belongs_to :user
    has_many :causes
    has_one_attached :picture
    
    include PgSearch
    pg_search_scope :search, against: [:business_name, :category, :region]
end
