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

  def external_ids_list
    object.external_ids.join(',')
  end

  def description
    return "DNA #{object.tag}" if object.control?

    desc = "DNA #{object.tag} from #{object.sample.patient.full_name}"
    desc += ", extracted #{date}" if date

    desc.html_safe
  end

  def report_links
    object.reports.map do |report|
      h.link_to report.file.filename, report.url, target: '_blank'
    end
  end
end
