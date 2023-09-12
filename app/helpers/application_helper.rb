module ApplicationHelper
  
  include Pagy::Frontend

  def pagination(obj)
    raw(pagy_bootstrap_nav(obj)) if obj.pages > 1 
  end

  def full_title(page_title='')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.blank?
      base_title
    else
      "#{page_title} | #{base_title}"
    end 
  end
  
end
