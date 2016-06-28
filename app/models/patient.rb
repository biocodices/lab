class Patient < ActiveRecord::Base
  has_many :samples

  def age
    if birthdate
      now = Time.now.utc.to_date
      age = now.year - birthdate.year
      age -= ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
    end
  end

  def projects
    samples.map(&:project).uniq
  end

  def full_name
    if !first_name || !last_name
      return acronym
    end

    "#{first_name} #{last_name}"
  end
end
