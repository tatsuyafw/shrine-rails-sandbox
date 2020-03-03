class ImageUploader < Shrine
  Attacher.validate do
    validate_extension %w[jpg jpeg png]
  end
end
