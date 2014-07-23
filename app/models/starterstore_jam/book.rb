module StarterstoreJam
  class Book < ActiveRecord::Base
  	is_addressable path: "/books"
    acts_as_content_block
    content_module :books
    has_and_belongs_to_many :authors
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'

	validates_presence_of :name

	before_validation :set_slug

 	def set_slug
 		self.slug = name.to_slug unless name.blank?
	end


	def in_stock?
		quantity_left > 0
	end
  
  end
end
