class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :amb_count

      t.timestamps null: false
    end
  end
end
