class Job < ApplicationRecord
    has_many :comments
    scope :mais_recente, -> {order("created_at DESC")}
    validates :title, :description, presence: true #rails 5
    #validates_presence_of :title, :description #rails 3
    
end
