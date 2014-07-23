class ListAllCategoriesPortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    @categories = Cms::Category.all
  end
    
end