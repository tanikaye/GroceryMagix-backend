require "faker"
puts "🌱 Seeding spices..."

# Seed your database here

10.times do
  User.create({name: Faker::Name.name})
end

puts "✅ Done seeding!"
