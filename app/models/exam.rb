class Exam < ActiveRecord::Base
  has_many :questions

  def identifier
    name + " " + year.to_s
  end
end
