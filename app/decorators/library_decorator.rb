class LibraryDecorator < Draper::Decorator
  delegate_all

  def pre_pcr_date
    h.pretty_date object.pre_pcr_date
  end

  def post_pcr_date
    h.pretty_date object.post_pcr_date
  end

  def pcr_date
    h.pretty_date object.pcr_date
  end

  def project_html_tags
    projects = object.projects.map(&:decorate).uniq
    h.safe_join(projects.map(&:html_tag).reject(&:blank?), ',')
  end
end
