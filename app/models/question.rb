class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :subject
  belongs_to :exam

  accepts_nested_attributes_for :answers, :allow_destroy => true
  accepts_nested_attributes_for :subject, :allow_destroy => true
  accepts_nested_attributes_for :exam, :allow_destroy => true
end
