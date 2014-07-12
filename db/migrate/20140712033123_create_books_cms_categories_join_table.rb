class CreateBooksCmsCategoriesJoinTable < ActiveRecord::Migration
  def change
  	  create_table :books_cms_categories, id: false do |t|
      t.belongs_to :book
      t.belongs_to :category
  	end
  end
end
