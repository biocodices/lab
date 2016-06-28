class NanodropQuantificationDecorator < Draper::Decorator
  delegate_all

  def concentration
    "#{object.concentration} #{object.class::CONCENTRATION_UNIT}"
  end

  # Generate a warning-highlighted table cell if the ratio 260/280 is off-range
  def ratio_260_280_td
    ratio_ok = object.class::RATIO_260_280_OK_RANGE.member? object.ratio_260_280
    background_color_class = ratio_ok ? '' : 'alert-border'
    h.content_tag :td, object.ratio_260_280, class: background_color_class
  end

  def created_at
    object.created_at.strftime('%-d %b %Y')
  end
end
