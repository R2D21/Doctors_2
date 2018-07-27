require 'faker'


15.times do
  Doctor.create(first_name: Faker::Name.name,
    last_name: Faker::Name.last_name
  )
end

10.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

10.times do
  City.create(
    name:Faker::Address.city,
    zip_code:Faker::Address.zip_code
  )
end

10.times do
  Appointment.create(
    date: Faker::Date.forward(23),
    doctor_id: rand(Doctor.first.id..Doctor.last.id),
    patient_id: rand(Patient.first.id..Patient.last.id),
    city_id: rand(City.first.id..City.last.id)
  )
end

10.times do
  Speciality.create(
    name: Faker::Vehicle.standard_specs
  )
end


10.times do
  Doctor_Speciality.create(
    doctor_id: rand(Doctor.first.id..Doctor.last.id),
    speciality_id: rand((Speciality.first.id)..(Speciality.last.id))
    # "doctor_id", null: false
    # t.integer "speciality_id
  )
end
