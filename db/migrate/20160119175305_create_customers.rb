class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.datetime :next_appointment
      t.string :reason
	  t.string :petnames
	  
      t.timestamps
    end
  end
end
