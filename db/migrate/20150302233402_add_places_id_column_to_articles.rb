class AddPlacesIdColumnToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :google_id, :string
  end
end
