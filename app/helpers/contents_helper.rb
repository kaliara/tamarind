module ContentsHelper
  def render_content(name)
    @content = Content.find_by_name(name)
    (!@content.blank? and @content.published) ? @content.value : ""
  end
  
  def content_exists?(name)
    Content.find_by_name(name) and !Content.find_by_name(name).value.blank?
  end
end
