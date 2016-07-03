class PatientDecorator < Draper::Decorator
  delegate_all

  def sample_links
    samples.map do |sample|
      h.link_to sample.id, h.sample_path(sample)
    end
  end

  def project_tags
    object.projects.map do |project|
      h.content_tag :span, project.tag, class: project.tag.downcase
    end
  end

  def select_option
    project_tag = object.projects.map(&:tag).uniq.join(',')
    institution = object.samples.map(&:institution).uniq.join(',')

    "##{object.id} #{object.full_name} [ #{project_tag} #{institution} ]"
  end

  def delete_prompt
    msg = "Delete patient #{object.full_name} from the database?"
    unless object.samples.count.zero?
      msg += " It will delete #{h.pluralize(object.samples.count, 'sample')} too!"
    end

    msg
  end
end
