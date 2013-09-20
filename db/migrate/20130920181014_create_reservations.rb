class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :res_time

      t.timestamps
    end
  end
end
