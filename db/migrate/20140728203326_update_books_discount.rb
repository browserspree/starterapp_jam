class UpdateBooksDiscount < ActiveRecord::Migration
   def change
  	add_content_column :books, :discount, :integer
  end
end
