class Classroom < ApplicationRecord
  belongs_to :user
  belongs_to :level
  belongs_to :material
  belongs_to :school
end
