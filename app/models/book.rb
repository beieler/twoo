class Book < ActiveRecord::Base
  belongs_to :account
  belongs_to :subject
  belongs_to :theme
  attr_accessor :subject_name, :theme_name
  before_save :require_deps
  def require_deps
    self.subject_id = Subject.create!(:name=>self.subject_name).id
    self.theme_id = Theme.create!(:name=>self.theme_name).id
  end
end
