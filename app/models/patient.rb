class Patient < ActiveRecord::Base
  def full_name
    if !first_name || !last_name
      return acronym
    end

    "#{first_name} #{last_name}"
  end
end
