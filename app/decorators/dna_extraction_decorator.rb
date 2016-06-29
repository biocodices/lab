class DnaExtractionDecorator < Draper::Decorator
  delegate_all

  def date
    object.date.try(:strftime, '%-d %B %Y')
  end

  def created_at
    object.created_at.strftime '%-d %B %Y'
  end

  def description
    desc = "DNA-#{object.id} from #{object.sample.patient.full_name}"
    desc += ", extracted #{date}" if date

    desc
  end
end
