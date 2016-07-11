class QubitQuantificationDecorator < Draper::Decorator
  delegate_all

  def source
    "DnaExtraction ##{object.dna_extraction.id}"
  end

  def assay_concentration
    if !object.assay_concentration
      return nil
    end

    "#{object.assay_concentration} #{object.class::ASSAY_CONCENTRATION_UNIT}"
  end

  def stock_concentration
    if !object.stock_concentration
      return nil
    end

    "#{object.stock_concentration} #{object.class::STOCK_CONCENTRATION_UNIT}"
  end

  def created_at
    object.created_at.strftime("%-d %b %Y")
  end
end
