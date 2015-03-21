class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :hosp_id
      t.float :latitude
      t.float :longitude
      t.string :device_id
      t.references :hospital, index: true

      t.timestamps null: false
    end
    add_foreign_key :routes, :hospitals
  end
end
