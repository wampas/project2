class AddRowsToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :location, :text
  	# not clear what else to put here
    # add_column :comments, , :string
  end
end
