class Language < ApplicationRecord
  validates :name, presence: true
  has_many :resource_languages
  has_many :resources, through: :resource_languages
end