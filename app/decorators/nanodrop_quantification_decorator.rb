class NanodropQuantificationDecorator < Draper::Decorator
  delegate_all

  def source
    "DnaExtraction ##{object.dna_extraction.id}"
  end

  def concentration
    "#{object.concentration} #{object.class::CONCENTRATION_UNIT}"
  end

  # Generate a warning-highlighted table cell if the ratio 260/280 is off-range.
  def ratio_260_280_td
    ratio_ok = \
      object.class::RATIO_260_280_OK_RANGE.member? object.ratio_260_280
    ratio_warning = \
      object.class::RATIO_260_280_WARN_RANGE.member? object.ratio_260_280

    cell_class = if ratio_ok
                   ''
                 elsif ratio_warning
                   'warning-highlight'
                 else
                   'danger-highlight'
                 end

    h.content_tag :td, object.ratio_260_280, class: cell_class
  end

  def created_at
    object.created_at.strftime('%-d %b %Y')
  end
end
