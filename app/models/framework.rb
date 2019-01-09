class Framework < ApplicationRecord
    validates :name, presence: true
    has_many :resource_frameworks
    has_many :resources, through: :resource_frameworks
end