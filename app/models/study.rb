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

  default_scope { order(admission_date: :desc, request_date: :desc, id: :desc) }

  def tag
    "#{project.tag}-#{admission_date.try(:year) || '?'}-#{order_in_its_year}"
  end

  def studies_of_same_project_and_year
    if admission_date
      query_string = 'project_id = ? and extract(year from admission_date) = ?'
      Study.where(query_string, project_id, admission_date.year)
    else
      query_string = 'project_id = ? and admission_date IS NULL'
      Study.where(query_string, project_id)
    end
  end

  def order_in_its_year
    studies_of_same_project_and_year.map(&:id).index(id) + 1
  end
end
