class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :subject
  belongs_to :exam

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  accepts_nested_attributes_for :answers, :allow_destroy => true
  accepts_nested_attributes_for :subject, :allow_destroy => true
  accepts_nested_attributes_for :exam, :allow_destroy => true
end
