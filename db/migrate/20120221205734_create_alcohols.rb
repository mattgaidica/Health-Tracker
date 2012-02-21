class CreateAlcohols < ActiveRecord::Migration
  def change
    create_table :alcohols do |t|

      t.timestamps
    end
  end
end
