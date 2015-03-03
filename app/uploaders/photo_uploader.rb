# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Process files as they are uploaded:
  #process :scale => [510, 510]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :feed do
    process :resize_to_fit => [510, 510]
  end

  version :thumb, :from_version => :feed do
    process :resize_to_fit => [161, 161]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
