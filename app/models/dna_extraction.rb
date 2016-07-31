class DnaExtraction < ActiveRecord::Base
  belongs_to :sample
  has_one :patient, through: :sample
  has_one :project, through: :sample

  has_many :nanodrop_quantifications, dependent: :destroy
  has_many :qubit_quantifications, dependent: :destroy

  has_many :library_dnas, dependent: :destroy
  has_many :libraries, through: :library_dnas

  has_many :sequencing_dnas, through: :library_dnas
  has_many :sequencings, through: :sequencing_dnas

  validates :sample_id, :tag, presence: true

  mount_uploader :gel_picture, GelPictureUploader
end
