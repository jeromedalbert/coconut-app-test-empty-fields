class CreateCoconuts < ActiveRecord::Migration[6.0]
  def change
    create_table :coconuts do |t|
      t.string :name, default: nil
      t.integer :diameter
      t.integer :weight

      t.timestamps
    end
  end
end
