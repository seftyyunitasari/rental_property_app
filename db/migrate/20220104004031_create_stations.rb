class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.text :railway
      t.text :station
      t.text :distance
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
