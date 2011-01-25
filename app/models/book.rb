class Book < ActiveRecord::Base
  belongs_to :account
  belongs_to :subject
  belongs_to :theme
  has_many :contributions
  has_many :invitations
  #attr_accessor :subject_name #, :theme_name
  #before_save :require_deps
  def require_deps
    #self.subject_id = Subject.create!(:name=>self.subject_name).id
    ##self.theme_id = Theme.create!(:name=>self.theme_name).id
    ##self.theme_id = Integer(self.theme_id)
  end
end
