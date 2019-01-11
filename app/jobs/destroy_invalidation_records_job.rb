class DestroyInvalidationRecordsJob < ApplicationJob
    queue_as :default
  
    def perform(record_name, record_type, record_id)
      attachments = ActiveStorage::Attachment.where(name: record_name, record_type: record_type, record_id: record_id)
      attachments.each do |attachment|
        blob = ActiveStorage::Blob.find(attachment.blob_id)
        attachment.destroy
        blob.destroy if blob.present?
      end
    end
  end