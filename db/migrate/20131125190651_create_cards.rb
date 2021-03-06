class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :cost
      t.belongs_to :kind, index: true
      t.string :description

      t.timestamps
    end
  end
end
