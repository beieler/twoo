class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :recipient
      t.references :book

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
