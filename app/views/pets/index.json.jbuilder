json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :animal, :breed, :age, :weight, :last_visit, :customer_id
  json.url pet_url(pet, format: :json)
end
