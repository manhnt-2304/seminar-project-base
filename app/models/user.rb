# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  # position { student: 0, teacher: 1 }
  def hello(age, position)
    # Conditional branch1
    if (age > 18)
      process1
    else
      process2
    end

    # Conditional branch2
    if (age == 2020 || position == 0)
      process3
    else
      process4
    end
  end

  def process1
  end

  def process2
  end

  def process3
  end

  def process4
  end
end
