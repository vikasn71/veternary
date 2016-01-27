class AddPetnamesToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :petnames, :string
  end
end
