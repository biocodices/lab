module ApplicationHelper
  def pretty_date(date)
    return unless date

    date.strftime('%-d %B, %Y')
  end

  def available_dnas(owner, owner_class_symbol)
    # Example call: get_available_dnas(@sequencing, :sequencings)

    selected_dna_ids = owner ? owner.dna_extraction_ids : []
    used_dna_ids = DnaExtraction.joins(owner_class_symbol).pluck(:id).uniq
    selected_dnas = DnaExtraction.find(selected_dna_ids)
    used_dnas = DnaExtraction.find(used_dna_ids - selected_dna_ids)
    unused_dnas = DnaExtraction.where.not(id: used_dna_ids + selected_dna_ids)

    {
      already_selected: selected_dnas.map(&:decorate),
      used: used_dnas.map(&:decorate).reverse,
      unused: unused_dnas.map(&:decorate).reverse
    }
  end
end
