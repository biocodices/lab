class Patient < ActiveRecord::Base
  has_many :samples, dependent: :destroy
  validate :unique_name_or_acronym, on: :create

  def unique_name_or_acronym
    keys = [:first_name, :last_name, :acronym].map(&:to_s) # :birthdate ?
    attrs = attributes.keep_if { |k, v| keys.include?(k) && v.present? }
    if Patient.where(attrs).count > 0
      errors.add(:patient, 'must be unique by first & last name or by acronym')
    end
  end

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
