class Db < ApplicationRecord
    validates :name, presence: true
    has_many :resource_dbs
    has_many :resources, through: :resource_dbs
end