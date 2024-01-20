class School < ApplicationRecord
  has_many :classrooms

  enum kind: { kinder: 0, elementary: 1, high: 2}, _suffix: :school
  enum regimen: { city: 0, state: 1, federal: 2, private: 3 }, _suffix: :school
end
