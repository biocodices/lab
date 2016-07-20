class NotebookDecorator < Draper::Decorator
  delegate_all

  def date
    object.date.strftime '%B %-d, %Y'
  end
end
