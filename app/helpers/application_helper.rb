module ApplicationHelper
  def yn(bool)
    bool ? "Yes" : "No"
  end
  def is_active?(link_path)
   current_page?(link_path) ? "active" : ""
  end
  def human_duration(seconds)
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    if hours > 1
      "#{hours} hours #{minutes} minutes"  
    else 
      "#{minutes} minutes"
    end
  end
end
