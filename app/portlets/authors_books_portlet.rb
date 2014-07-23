class AuthorsBooksPortlet < Cms::Portlet

  description "Displays all Author's books."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor true
     
  def render
    # Your Code Goes Here
 
    @books = StarterstoreJam::Book.joins(:authors).where(authors_book: {author_id: params[:book_id]})
    @authors = StarterstoreJam::Author.find(params[:book_id])
  end
    
end