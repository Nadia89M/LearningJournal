class Technology < ApplicationRecord
    validates :name, presence: true
    has_many :resource_technologies
    has_many :resources, through: :resource_technologies
end