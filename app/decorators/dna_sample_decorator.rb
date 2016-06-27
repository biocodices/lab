class DnaSampleDecorator < Draper::Decorator
  delegate_all

  def extraction_date
    object.extraction_date.strftime "%-d %B %Y"
  end

  def description
    "DNA-#{object.id} from #{object.sample.patient.full_name}, extracted #{extraction_date}"
  end
end
