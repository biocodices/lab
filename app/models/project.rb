class Project < ActiveRecord::Base
  has_many :studies, dependent: :destroy
end
