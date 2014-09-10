class CreateClimates < ActiveRecord::Migration
  def change
    create_table :climates do |t|
      t.integer :city_id
      t.string :temperature
      t.string :pressure
      t.string :humidity
      t.string :temperature_min
      t.string :temperature_max
      t.string :wind_speed
      t.string :wind_degrees
      t.string :clouds

      t.timestamps
    end
  end
end
