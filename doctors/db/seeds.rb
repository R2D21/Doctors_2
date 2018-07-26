require 'faker'

15.times do
  Doctor.create(first_name: Faker::Overwatch.hero,
    last_name: Faker::Overwatch.location,
    postal_code: rand(1..55)
  )
end


10.times do
  Patient.create(
    first_name: Faker::DragonBall.character,
    last_name: Faker::FamilyGuy.character

  )
end

10.times do
  Appointment.create(
    date: Faker::Date.forward(23),
    doctor_id: rand(Doctor.first.id..Doctor.last.id),
    patient_id: rand(Patient.first.id..Patient.last.id)
  )
end
