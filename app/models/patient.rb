class Patient < ActiveRecord::Base
  has_many :samples, dependent: :destroy

  def age
    if birthdate
      now = Time.now.utc.to_date
      age = now.year - birthdate.year
      month_already = now.month > birthdate.month
      day_already = (now.month == birthdate.month && now.day >= birthdate.day)
      age -= month_already || day_already ? 0 : 1

      age
    end
  end

  def projects
    samples.map(&:project).uniq
  end

  def full_name
    return acronym if !first_name || !last_name

    "#{first_name} #{last_name}"
  end
end
