module CardsHelper
  def description_with_images text
    text = text.gsub('[Energy]', '<i class="fa fa-bolt"></i>').html_safe
    text = text.gsub('[Star]', '<i class="fa fa-star"></i>').html_safe
    text = text.gsub('[Heart]', '<i class="fa fa-heart"></i>').html_safe
    text = text.gsub('[Attack]', image_tag("attack.png")).html_safe
    text = text.gsub('[1]', dice_number(1)).html_safe
    text = text.gsub('[2]', dice_number(2)).html_safe
    text = text.gsub('[3]', dice_number(3)).html_safe
  end

  def dice_number number
    "<span class='fa-stack'>
        <i class='fa fa-square fa-stack-1x'></i>
        <i class='fa-stack-1x dice'>#{ number }</i>
    </span>"
  end
end
