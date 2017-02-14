class Patient < ActiveRecord::Base
  has_many :studies, dependent: :destroy
  has_many :samples  # TODO: remove after script
  validate :unique_name_or_acronym_and_birthday, on: :create

  def doctors
    studies.map(&:doctor_full_name).uniq
  end

  def institutions
    studies.map(&:institution).uniq
  end

  def unique_name_or_acronym_and_birthday
    keys = [:first_name, :last_name, :acronym, :birthdate].map(&:to_s)
    attrs = attributes.keep_if { |k, v| keys.include?(k) && v.present? }

    if Patient.where(attrs).count > 0
      errors.add(:patient, 'must be unique by name/acronym & birthday')
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
    # studies.map(&:project).uniq  # FIXME: uncomment after script
  end

  def full_name
    return acronym if !first_name || !last_name

    "#{first_name} #{last_name}"
  end

  def reports
    studies
      .flatten.map(&:samples)
      .flatten.map(&:dna_extractions)
      .flatten.map(&:reports)
      .flatten
  end
end
