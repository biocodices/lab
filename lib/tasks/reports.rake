namespace :reports do
  desc 'Search for reports and assign them to SequencingDnas'
  task update: :environment do
    # Assumes that the reports are stored in subdirectories per Sequencing:
    # reports_dir/sequencing-<Sequencing_ID>/
    # <SequencingDNA_tag>__<patient-name>.pdf
    # SequencingDNA_tag will be something like: 10-1_LIB-1_SEQ-1
 
    base_dir = '~/variant_calling/reports'
    glob_pattern = File.expand_path File.join(base_dir, 'sequencing-*/*.pdf')

    Dir.glob(glob_pattern).sort.each do |pdf|
      regex = /(?<dna_tag>\d+-\d+)_LIB-(?<lib_id>\d+)_SEQ-(?<seq_id>\d+)__.*\.pdf/
      match = regex.match File.basename(pdf)

      dna = DnaExtraction.find_by(tag: match['dna_tag'])
      library_dna = LibraryDna.find_by(
        dna_extraction_id: dna.id,
        library_id: match['lib_id']
      )
      sequencing_dna = SequencingDna.find_by(
        library_dna_id: library_dna.id,
        sequencing_id: match['seq_id']
      )

      File.open(pdf) { |f| sequencing_dna.report = f }

      puts "#{sequencing_dna.patient.full_name}"
      puts " -> #{pdf}"
      sequencing_dna.save!
      puts
    end
  end
end
