module ApplicationHelper
  
  def display_delete_button(contribution)
    if signed_in?
      content_tag(:div) do
        link_to('Delete', contribution_path(contribution), method: :delete)
      end
    end
  end
  
  def host_view_links
    if signed_in?
      content_tag(:div) do
        link_to('guest list and potato count', guests_path)
      end
    end
  end
end
