class Book < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :theme
end
