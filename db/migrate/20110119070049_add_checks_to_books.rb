class AddChecksToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :preface_include, :boolean, :default=>true
    add_column :books, :dedication_include, :boolean, :default=>true
    add_column :books, :epilogue_include, :boolean, :default=>true
    add_column :books, :contributors_list_include, :boolean, :default=>true
  end

  def self.down
    remove_column :books, :contributors_list_include
    remove_column :books, :epilogue_include
    remove_column :books, :dedication_include
    remove_column :books, :preface_include
  end
end
