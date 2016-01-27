json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :pet_id, :customer_id, :remainder, :reason, :doctor_id
  json.url appointment_url(appointment, format: :json)
end
