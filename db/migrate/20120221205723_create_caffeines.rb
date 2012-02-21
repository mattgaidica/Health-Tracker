class CreateCaffeines < ActiveRecord::Migration
  def change
    create_table :caffeines do |t|

      t.timestamps
    end
  end
end
