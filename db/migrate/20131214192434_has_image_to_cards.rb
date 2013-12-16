class HasImageToCards < ActiveRecord::Migration
  def change
    add_column :cards, :has_image, :boolean
  end
end
