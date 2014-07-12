module StarterstoreJam
  class Book < ActiveRecord::Base
    acts_as_content_block
    content_module :books
    has_and_belongs_to_many :authors
     has_and_belongs_to_many :categories, class_name: 'Cms::Category'
  end
end
