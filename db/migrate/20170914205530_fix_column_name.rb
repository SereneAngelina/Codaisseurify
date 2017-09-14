class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :name, :name
    rename_column :songs, :name, :name
    rename_column :songs, :url, :url
  end
end
