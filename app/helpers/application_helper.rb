module ApplicationHelper
  def nice_boolean(exp)
    exp == false ? "No" : "Yes"
  end
  
  def nice_notes(str)
    str.gsub(/\-\s+|\,\s+|\.\s+|\;/,"<br/>").html_safe
  end
  
  def nice_date(date)
    date.strftime("%b %e, %Y")
  end
end
