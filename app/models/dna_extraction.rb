class DnaExtraction < ActiveRecord::Base
  belongs_to :sample

  has_many :nanodrop_quantifications, dependent: :destroy
  has_many :qubit_quantifications, dependent: :destroy

  has_many :library_dnas, dependent: :destroy
  has_many :libraries, through: :library_dnas

  has_many :sequencing_dnas, through: :library_dnas
  has_many :sequencings, through: :sequencing_dnas

  validates :tag, presence: true

  scope :control, -> { where('tag LIKE ?', '%ontrol%') }
  scope :all_but_controls, -> { where('tag NOT LIKE ?', '%control%') }

  scope :have_gel_picture, -> { where('gel_picture IS NOT NULL') }
  scope :dont_have_gel_picture, -> { where('gel_picture IS NULL') }

  mount_uploader :gel_picture, GelPictureUploader

  def self.used_in_libraries
    all_but_controls.joins(:libraries).uniq
  end

  def self.unused_in_libraries
    all_but_controls - used_in_libraries
  end

  def self.grouped_by_gel_picture
    have_gel_picture.group_by { |dna| dna.gel_picture.url }
  end

  def control?
    tag =~ /control/i
  end

  def reports?
    sequencing_dnas.map(&:report).map(&:file).any?
  end

  def reports
    sequencing_dnas.map(&:report).reject{ |report| report.file.nil? }
  end

  def external_ids
    sequencing_dnas.map(&:external_id).reject(&:blank?)
  end

  def sample
    return mock_sample if control?

    Sample.find(sample_id)
  end

  def patient
    return mock_patient if control?

    sample.patient
  end

  def project
    return mock_project if control?

    sample.project
  end

  def mock_sample
    sample = OpenStruct.new
    sample.patient = mock_patient
    sample
  end

  def mock_patient
    patient = OpenStruct.new
    patient.full_name = 'Control'
    patient
  end

  def mock_project
    project = OpenStruct.new
    project.decorate = project
    project.tag = nil
    project.html_tag = nil

    project
  end
end
