class AddLongitudeAndLatitudeToProfessionnel < ActiveRecord::Migration
  def change
    change_table :professionnels do |t|
      t.decimal :longitude, precision: 9, scale: 6
      t.decimal :latitude, precision: 9, scale: 6
    end
  end
end
