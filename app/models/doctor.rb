class Doctor < ActiveRecord::Base
  has_many :pets, :through => :appointment
  has_many :customers, :through => :appointment
  has_many :appointments
  
  validates :name, presence: true, length: { maximum: 35}
  validates :zip, format: { with: /(^)\d{5}($)/,
    message: "should have 5 digits"}
  validates :experience, inclusion: { in: 1..100,
    message: "invalid"}
  
end