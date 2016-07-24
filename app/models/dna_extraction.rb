class DnaExtraction < ActiveRecord::Base
  belongs_to :sample
  has_and_belongs_to_many :libraries

  has_many :dna_sequencings, dependent: :destroy
  has_many :sequencings, through: :dna_sequencings, dependent: :destroy

  has_one :patient, through: :sample
  has_one :project, through: :sample

  has_many :nanodrop_quantifications, dependent: :destroy
  has_many :qubit_quantifications, dependent: :destroy

  validates :sample_id, :tag, presence: true

  mount_uploader :gel_picture, GelPictureUploader
end
