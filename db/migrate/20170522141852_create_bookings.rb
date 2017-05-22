class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_day
      t.integer :duration
      t.string :status
      t.references :user, foreign_key: true
      t.references :console, foreign_key: true

      t.timestamps
    end
  end
end
