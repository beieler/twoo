class CreateContributions < ActiveRecord::Migration
  def self.up
    create_table :contributions do |t|
      t.references :account
      t.references :book
      t.string :sig
      t.text :extra
      t.text :wisdom
      t.string :invitation
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :contributions
  end
end
