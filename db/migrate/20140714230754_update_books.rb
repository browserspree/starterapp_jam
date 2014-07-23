class UpdateBooks < ActiveRecord::Migration
  def change
  	add_content_column :books, :quantity_left, :integer
  end
end
