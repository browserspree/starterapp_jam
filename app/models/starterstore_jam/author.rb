module StarterstoreJam
  class Author < ActiveRecord::Base
    acts_as_content_block
    content_module :authors
    has_and_belongs_to_many :books
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
  end
end
