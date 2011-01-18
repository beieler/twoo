class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.references :user
      t.references :subject
      t.references :theme
      t.string :title
      t.string :occasion
      t.text :question
      t.text :extra
      t.text :preface
      t.text :dedication
      t.text :epilogue

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
