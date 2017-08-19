module ApplicationHelper

  def host_view_links
    if signed_in?
      content_tag(:div) do
        link_to('guest list and potato count', guests_path)
      end
    end
  end
end
