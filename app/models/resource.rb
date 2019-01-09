class Resource < ApplicationRecord
  validates :project_id, presence: true 
  validates :name, presence: true 
  validates :url, presence: true
  validates :memo, presence: true, length: { minimum: 5 }
  has_many :resource_languages
  has_many :languages, through: :resource_languages
  has_many_attached :images
  has_many_attached :documents
  has_many :resource_technologies
  has_many :technologies, through: :resource_technologies
  has_many :resource_frameworks
  has_many :frameworks, through: :resource_frameworks
  has_many :resource_dbs
  has_many :dbs, through: :resource_dbs
  belongs_to :project
end
