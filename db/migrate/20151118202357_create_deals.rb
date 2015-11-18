class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :main_image
      t.string :caption
      t.string :link_url
      t.string :link_text
      t.string :description
      t.string :terms_and_conditions
      t.integer :you_pay_price
      t.integer :retail_price
      t.integer :you_save_price
      t.integer :percentage_save
      t.string :snap_scan_link
      t.string :snap_qr_code

      t.references :location, null: false

      t.timestamps null: false
    end
  end
end
