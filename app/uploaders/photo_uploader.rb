class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  process resize_to_fit: [800, 800]


  version :standard do
    resize_to_fill 250, 300
  end

  version :thumb do
    resize_to_fill 100, 100
  end
end
