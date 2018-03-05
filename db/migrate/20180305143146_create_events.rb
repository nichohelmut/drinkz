class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :location_name
      t.string :location_address
      t.time :time
      t.string :event_picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
