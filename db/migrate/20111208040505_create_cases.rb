class CreateCases < ActiveRecord::Migration
  def up
    create_table :cases do |t|
      t.string :block_number, :null => false
      t.string :cpl_number, :null => false
      t.string :patient_last_name, :null => false
      t.boolean :validation, :default => false, :null => false

      t.timestamps
    end

    change_table :cases do |t|
      t.index :cpl_number, :unique => true
    end
  end

  def down
    drop_table :cases
  end
end
