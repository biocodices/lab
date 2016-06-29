module ApplicationHelper
  def pretty_date(date)
    return if !date

    date.strftime('%-d %B, %Y')
  end
end
