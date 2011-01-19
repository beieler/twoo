class AddSubjectNameToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :subject_name, :string
  end

  def self.down
    remove_column :books, :subject_name
  end
end
