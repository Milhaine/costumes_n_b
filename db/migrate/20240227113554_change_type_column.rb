class ChangeTypeColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :costumes, :type, :costume_type
  end
end
