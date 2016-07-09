module AssociableToDnaExtraction
  extend ActiveSupport::Concern

  def associate_to_dna_extraction!(sample_id, possible_dna_extraction_id)
    sample = infer_sample sample_id

    # If a DnaExtraction ID is passed, find that DnaExtraction or raise an
    # exception. The search *should fail* if no DnaExtraction is found, because
    # if the field is present, it means the user is explicitely trying to
    # associate the quantification to an *existing* DnaExtraction. So she should
    # go back to the TSV file and fix the DnaExtraction ID.
    #
    # That's why I'm not using ActiveRecord's #find_or_create method.
    #
    # If no DnaExtraction ID was included, we just create a new DnaExtraction
    # record to associate with this quantification. This should be the usual.
    self.dna_extraction = if possible_dna_extraction_id
                            DnaExtraction.find possible_dna_extraction_id
                          else
                            DnaExtraction.create(sample: sample)
                          end

    if self.dna_extraction.sample != sample
      raise "The Dna Extraction #{possible_dna_extraction_id} belongs to "
        "sample ##{dna_extraction.sample.id} but you say it belongs to "
        "sample ##{sample.id}."
    end
  end

  private

  def infer_sample(sample_id)
    # Try to find a sample with this ID. If it doesn't exist, revert to
    # searching by the old IDs.
    sample = begin
               Sample.find sample_id
             rescue ActiveRecord::RecordNotFound
               Sample.find_by old_id: sample_id
             end

    sample or raise ActiveRecord::RecordNotFound
  end
end
