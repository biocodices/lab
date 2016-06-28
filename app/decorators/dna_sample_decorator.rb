class DnaSampleDecorator < Draper::Decorator
  delegate_all

  def extraction_date
    object.extraction_date.try(:strftime, "%-d %B %Y")
  end

  def description
    desc = "DNA-#{object.id} from #{object.sample.patient.full_name}"
    desc += ", extracted #{extraction_date}" if extraction_date

    desc
  end
end
