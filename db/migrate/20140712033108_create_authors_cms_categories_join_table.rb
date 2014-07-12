class CreateAuthorsCmsCategoriesJoinTable < ActiveRecord::Migration
  def change
  	  create_table :authors_cms_categories, id: false do |t|
      t.belongs_to :author
      t.belongs_to :category
  	end
  end
end
