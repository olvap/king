class Card < ActiveRecord::Base
  belongs_to :kind

  mount_uploader :image, ImageUploader

  def card_file_name
    image.url || 'generic.png'
  end
end
