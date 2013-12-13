class Card < ActiveRecord::Base
  belongs_to :kind

  def card_file_name
    "#{ name.downcase.gsub(' ', '_') }.png"
  end
end
