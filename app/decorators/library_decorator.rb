class LibraryDecorator < Draper::Decorator
  delegate_all

  def pre_pcr_date
    h.pretty_date object.pre_pcr_date
  end

  def post_pcr_date
    h.pretty_date object.post_pcr_date
  end

  def pcr_date
    h.pretty_date object.pcr_date
  end
end
