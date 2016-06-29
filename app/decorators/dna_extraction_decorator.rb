class DnaExtractionDecorator < Draper::Decorator
  delegate_all

  def date
    object.date.try(:strftime, '%-d %B %Y')
  end

  def created_at
    object.created_at.strftime '%-d %B %Y'
  end

  def description
    desc = "#{object.project.decorate.tag} DNA-#{object.id} from #{object.sample.patient.full_name}"
    desc += ", extracted #{date}" if date

    desc.html_safe
  end
end
