class DnaExtractionDecorator < Draper::Decorator
  delegate_all

  def formated_date
    object.date.try(:strftime, '%-d %B %Y')
  end

  def created_at
    object.created_at.strftime '%-d %B %Y'
  end

  def libraries_list
    object.libraries.map(&:id).join(', ')
  end

  def sequencings_list
    object.sequencings.map(&:id).join(', ')
  end

  def external_ids
    object.sequencing_dnas.map(&:external_id).reject(&:blank?).join(',')
  end

  def description
    return "DNA #{object.tag}" if object.is_control?

    desc = "DNA #{object.tag} from #{object.sample.patient.full_name}"
    desc += ", extracted #{date}" if date

    desc.html_safe
  end
end
