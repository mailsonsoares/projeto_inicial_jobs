class Job < ApplicationRecord
    validates :title, :description, presence: true #rails 5
    #validates_presence_of :title, :description #rails 3
end
