class CreateTings < ActiveRecord::Migration
  def change
    create_table :tings do |t|
      t.string :name, :null => false
      t.integer :qty, :null => false, :default => 1

      t.timestamps
    end
  end
end
