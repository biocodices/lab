class DnaSampleDecorator < Draper::Decorator
  delegate_all

  def description
    extraction_date = object.extraction_date.strftime "%-d %b"
    "DNA-#{object.id} from #{object.sample.patient.full_name}, extracted #{extraction_date}"
  end
end
