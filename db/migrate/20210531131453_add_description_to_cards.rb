class AddDescriptionToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :description, :text
  end
end
