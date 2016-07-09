class Project < ActiveRecord::Base
  has_many :samples, dependent: :destroy
end
