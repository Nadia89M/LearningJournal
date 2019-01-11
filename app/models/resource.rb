class Resource < ApplicationRecord
  validates :project_id, presence: true 
  validates :name, presence: true 
  validates :url, presence: true
  validates :memo, presence: true, length: { minimum: 5 }
  validate :images_validation
  validates :url, :format => URI::regexp(%w(http https))
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


  private 

  def images_validation
    error_message = ''
    images_valid = true
    if images.attached?
      images.each do |image|
        if !image.blob.content_type.in?(%w(image/jpeg image/jpg image/png))
          images_valid = false
          error_message = "can't have this format"
        end
      end
    end
    unless images_valid
      errors.add(:images, error_message)
      self.images.purge
      DestroyInvalidationRecordsJob.perform_later('images', 'Resource', self.id)
    end
  end

end
