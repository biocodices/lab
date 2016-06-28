class PatientDecorator < Draper::Decorator
  delegate_all

  def select_option
    project_tag = object.samples.first.project.try(:tag)
    institution = object.samples.first.try(:institution)

    "#{project_tag} #{institution} #{object.full_name}"
  end
end
