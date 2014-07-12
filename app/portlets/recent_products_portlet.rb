class RecentProductsPortlet < Cms::Portlet

  description "Books that you've recently viewed!"

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    @books = StarterstoreJam::Book.all(:order => "created_at desc", :limit => self.limit)
  end
    
end