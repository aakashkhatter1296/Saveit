class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :username
      t.string :password
      t.float :latitude
      t.float :longitude
      t.integer :ambulance_count
      t.integer :hospital_type

      t.timestamps null: false
    end
  end
end
