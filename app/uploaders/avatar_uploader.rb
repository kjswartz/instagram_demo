# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :large_thumb do
    process :resize_to_fit => [110, 110]
  end

  version :thumb, :from_version => :large_thumb  do
    process :resize_to_fit => [40, 40]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
