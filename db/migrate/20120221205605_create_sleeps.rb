class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.text :notes

      t.timestamps
    end
  end
end
