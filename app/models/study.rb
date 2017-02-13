class Study < ActiveRecord::Base
  belongs_to :project
  belongs_to :patient
end
