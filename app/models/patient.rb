class Patient < ActiveRecord::Base
  has_many :samples

  def full_name
    if !first_name || !last_name
      return acronym
    end

    "#{first_name} #{last_name}"
  end
end
