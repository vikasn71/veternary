class Customer < ActiveRecord::Base
  has_many :pets
  has_many :doctors, :through => :appointment
  has_many :appointments
end
