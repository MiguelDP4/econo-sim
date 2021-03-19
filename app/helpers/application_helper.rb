module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Econo-Sim"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def log_button
    if user_signed_in? 
        link_to("Log Out", destroy_user_session_path, {method: :delete})
    else
        link_to("Log In", new_user_session_path)
    end
  end
end
