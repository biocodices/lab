class ProjectDecorator < Draper::Decorator
  delegate_all

  def tag
    h.content_tag(:span, object.tag, class: ["project", object.tag.downcase])
  end
end
