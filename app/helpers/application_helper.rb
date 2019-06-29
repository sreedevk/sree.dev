module ApplicationHelper
  def profile_settings
    Config.profile
  end

  def navigation_items
    Config.menu
  end

  def format_link_options(link_options)
    raw(link_options.join(' '))
  end

  def print_employment_tenure(snapshot)
    end_date = snapshot.date_of_resignation.present? ? snapshot.date_of_resignation : "Present"
    "#{snapshot.date_of_joining.strftime('%b %Y')} - #{end_date.is_a?(String) ? end_date : end_date.strftime('%b %Y')}"
  end
end
