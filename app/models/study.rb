# frozen_string_literal: true

# A study can be thought of as a 'case' that arrives to the lab
# from a given institution and doctor, belonging to some patient
# and with one or many samples attached to it.
class Study < ActiveRecord::Base
  belongs_to :project
  validates :project, presence: true, allow_nil: false

  belongs_to :patient
  validates :patient, presence: true, allow_nil: false

  has_many :samples, dependent: :destroy

  delegate :full_name, to: :patient
end
