class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :terms#, :user_id
  validates :name, :length => { :within => 3..40 }
  validates_acceptance_of :terms, :accept => true
end
