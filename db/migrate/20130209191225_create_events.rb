class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :stage

      # Geocoder
      t.float :latitude
      t.float :longitude
      t.string :address

      t.date :start_date
      t.date :end_date

      t.timestamps 
    end
  end
end
