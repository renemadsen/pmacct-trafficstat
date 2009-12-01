# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(page_title)
    @page_title = page_title
  end

  def page_title(append = '')
    [@page_title, append].select { |t| !t.blank? }.join(' :: ')
  end

  def menu_link(title, url, controllers)
    controllers = [controllers] if controllers.is_a? String
    link_to title, url, :class => controllers.include?(controller.controller_name) ? 'active' : nil
  end

  def admin_area(&block)
    return unless current_user.admin?
    concat content_tag(:div, capture(&block), :class => 'admin')
  end
end
