class School < ApplicationRecord
  has_many :classrooms

  enum kind: %i(kinder elementary high), _suffix: :school
  enum regimen: %i(city state federal private), _suffix: :school
end
