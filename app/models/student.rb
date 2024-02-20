class Student < ApplicationRecord
  enum sex: %i(male female other)

  def age
    return Time.now.year - birthday.year
  end
end
