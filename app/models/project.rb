class Project < ApplicationRecord
    validates :name, presence: true 
    has_many :resources, dependent: :destroy
end
