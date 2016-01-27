class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :customer
  belongs_to :doctor
  
  validates :date, :pet, :remainder, :reason, :doctor, presence: true
  validate :date_not_past
  
  def date_not_past
    if date < Date.today
	  errors.add(:date, "can't be in the past")
	end
  end
end
