class Resource < ApplicationRecord
  validates :url, presence: true
  validates :memo, presence: true, length: { minimum: 5 }
  has_many :resource_languages
  has_many :languages, through: :resource_languages
  has_many_attached :images
  has_many_attached :documents
end
