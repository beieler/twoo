class Book < ActiveRecord::Base
  belongs_to :user
  has_one :subject
  has_one :theme
  attr :subject_name
end
