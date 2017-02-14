class StudyDecorator < Draper::Decorator
  delegate_all

  def request_date
    return unless object.request_date
    object.request_date.strftime('%-d %b %Y')
  end

  def admission_date
    return unless object.admission_date
    object.admission_date.strftime('%-d %b %Y')
  end

  def request_date_ago
    return unless object.request_date
    h.time_ago_in_words(object.request_date) + ' ago'
  end

  def admission_date_ago
    return unless object.admission_date
    h.time_ago_in_words(object.admission_date) + ' ago'
  end

  def delete_prompt
    "Delete Study #{object.tag}, #{object.patient.full_name}, " \
    'from the database?'
  end
end
