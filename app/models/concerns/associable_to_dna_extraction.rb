module AssociableToDnaExtraction
  extend ActiveSupport::Concern

  def associate_to_dna_extraction!(dna_extraction_tag)
    sample = infer_sample sample_id

    # A DNA-tag will be passed in the Sample field for Nanodrop and Qubit
    # quantifications. The DNA-tag is composed of an existing Sample ID and
    # an either existing or non-existing DNA-order-number:
    #
    #   "#{sample.id}-#{dna_ordinal}"
    #
    # The DNA ordinal number is the number of the DNA in the context of its
    # sample of origin. For instance, sample 10's first DNA Extraction is 10-1,
    # the next one will be 10-2, and so on.
    #
    # So, when receiving a tag like '10-1':
    #
    #  - We look for a DnaExtraction with tag 10-1 and choose it if it exists.
    #    A DnaExtraction with such tag will always be associated with Sample 10.
    #  - If there isn't a DnaExtraction with that tag, we create a new
    #    DnaExtraction, associate it with Sample 10 and assign it the tag.
    #
    # There is room for error if the user passes a tag like '10-2' when there
    # isn't still a Dna tagged like '10-1'. The problem is that the user will
    # always assign these tags to their tubes *before* loading the data to the
    # database, so the consistency with the tags and ordinal numbers is out
    # of our control and it's their responsibility.

    dna_extraction = DnaExtraction.find_or_initialize_by(tag: dna_extraction_tag)
    unless dna_extraction.persisted?
      dna_extraction.sample_id = dna_extraction_tag.split('-').first
      dna_extraction.save!
    end

    self.dna_extraction = dna_extraction
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
