class AddMissingToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :terms, :boolean
  end

  def self.down
    remove_column :users, :terms
    remove_column :users, :name
  end
end
