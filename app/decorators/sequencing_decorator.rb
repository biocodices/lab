class SequencingDecorator < Draper::Decorator
  delegate_all

  def run_date
    return unless object.run_date
    object.run_date.strftime('%B %-d, %Y')
  end

  def pre_seq_date
    return unless object.pre_seq_date
    object.pre_seq_date.strftime('%B %-d, %Y')
  end

  def delete_prompt
    "Destroy sequencing ##{object.id}?"
  end

  def project_html_tags
    projects = sequencing.projects.map(&:decorate)
    h.safe_join(projects.map(&:html_tag).reject(&:blank?), ',')
  end
end
