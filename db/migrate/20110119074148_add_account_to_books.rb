class AddAccountToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :account_id, :integer
  end

  def self.down
    remove_column :books, :account_id
  end
end
