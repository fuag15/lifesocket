# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_limit: [150, 200]
  end

  version :mini do
    process resize_to_limit: [160, 200]
  end

  version :medium do
    process resize_to_limit: [400, 400]
  end

  version :large do
    process resize_to_limit: [810, 600]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
