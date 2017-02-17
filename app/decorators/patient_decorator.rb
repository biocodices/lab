class PatientDecorator < Draper::Decorator
  delegate_all

  def project_tags
    object.projects.map do |project|
      h.content_tag :span, project.tag, class: project.tag.downcase
    end
  end

  def select_option
    project_tags = object.projects.map(&:tag).uniq.join(', ')
    institutions = object.studies.map(&:institution).uniq.join(', ')
    bday = object.birthdate.strftime('%-d %B %Y') if object.birthdate

    ["##{object.id} #{object.full_name}", project_tags,
     institutions, bday].reject(&:blank?).join(' | ')
  end

  def delete_prompt
    msg = "Delete patient #{object.full_name} from the database?"

    unless object.studies.count.zero?
      msg += " It will delete #{h.pluralize(object.studies.count, 'study')} too!"
    end

    msg
  end
end
