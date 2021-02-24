module ApplicationHelper
    def my_link_to(text, href)
        href.gsub!(".", "/") 
        "<a href='#{href}'>#{text}</a>".html_safe
    end
end
