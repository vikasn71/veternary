class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :doctors, :through => :appointment
  has_many :appointments
  
  validates :animal, :age, :weight, :last_visit, presence: true
  
  validates :name, :breed, presence: true, length: { maximum: 35}
  validates :animal, inclusion: { in: %w(dog cat bird),
    message: "invalid"}
end
