module ApplicationHelper
  def pretty_date(date)
    return unless date

    date.strftime('%-d %B, %Y')
  end
end
