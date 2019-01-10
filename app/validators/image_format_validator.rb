class ImageFormatValidator < ActiveStorage::EachValidator
    
    def validate_each(record, attribute, value)
      unless value.include? "/jpg"
        record.errors.add(attribute, "it's not an image")
      end
    end
end