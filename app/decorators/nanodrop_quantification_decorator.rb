class NanodropQuantificationDecorator < Draper::Decorator
  delegate_all

  def concentration
    "#{object.concentration} #{object.class::CONCENTRATION_UNIT}"
  end

  def created_at
    object.created_at.strftime("%-d %b %Y")
  end
end
