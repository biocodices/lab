class ProjectDecorator < Draper::Decorator
  delegate_all

  def html_tag
    h.content_tag(:span, object.tag, class: object.tag.downcase)
  end
end
