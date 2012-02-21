class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.text :notes

      t.timestamps
    end
  end
end
