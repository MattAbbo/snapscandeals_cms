class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :short_url, null: false
      t.string :map_image

      t.timestamps null: false
    end
  end
end
