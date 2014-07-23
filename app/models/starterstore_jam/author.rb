module StarterstoreJam
  class Author < ActiveRecord::Base
    is_addressable path: "/authors"
    acts_as_content_block
    content_module :authors
    has_and_belongs_to_many :books
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'

	validates_presence_of :name

	before_validation :set_slug #This sets the slug automatically before the file saves

	def set_slug
 	 	self.slug = name.to_slug unless name.blank?
	end

	
  end
end
