class Card < ActiveRecord::Base
  belongs_to :kind

  def card_file_name
    if has_image
      "#{ name.downcase.gsub(' ', '_') }.png"
    else
      "generic.png"
    end
  end
end
