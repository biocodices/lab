class Sample < ActiveRecord::Base
  belongs_to :project
  belongs_to :patient

  delegate :full_name, to: :patient
end
