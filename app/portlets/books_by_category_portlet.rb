class BooksByCategoryPortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    @books = StarterstoreJam::Book.joins(:categories).where(cms_categories: {id: params[:category_id]})
    @category = Cms::Category.find(params[:category_id])
  end
    
end