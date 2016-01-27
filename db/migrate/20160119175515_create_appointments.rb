class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :pet, index: true
      t.references :customer, index: true
      t.string :remainder
      t.text :reason
      t.references :doctor, index: true

      t.timestamps
    end
  end
end
