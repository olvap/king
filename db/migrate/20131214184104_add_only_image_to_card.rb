class AddOnlyImageToCard < ActiveRecord::Migration
  def change
    add_column :cards, :only_image, :boolean
  end
end
