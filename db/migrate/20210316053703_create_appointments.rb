class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :agenda
      t.datetime :date
      t.integer :speaker_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
