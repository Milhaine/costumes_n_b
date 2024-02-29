class AddPriceAndDescriptionToCostume < ActiveRecord::Migration[7.1]
  def change
    add_column :costumes, :price, :float
    add_column :costumes, :description, :text
  end
end
