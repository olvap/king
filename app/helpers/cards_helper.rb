module CardsHelper
  def description_with_images text
    text = text.gsub('[Energy]', '<i class="fa fa-bolt"></i>').html_safe
    text = text.gsub('[Star]', '<i class="fa fa-star"></i>').html_safe
    text = text.gsub('[Heart]', '<i class="fa fa-heart"></i>').html_safe
    text = text.gsub('[Attack]', '<i class="fa fa-rocket"></i>').html_safe
  end
end
