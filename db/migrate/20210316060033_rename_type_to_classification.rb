class RenameTypeToClassification < ActiveRecord::Migration[6.1]
  def change
    rename_column :meetings, :type, :classification
  end
end
