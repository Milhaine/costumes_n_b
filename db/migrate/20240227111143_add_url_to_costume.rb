class AddUrlToCostume < ActiveRecord::Migration[7.1]
  def change
    add_column :costumes, :url, :string
  end
end
