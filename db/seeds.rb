# Create a main sample user.
User.create!(name:  "Example User",
  email: "example@railstutorial.org",
  password:              "foobarqu",
  password_confirmation: "foobarqu",
  )

# Generate a bunch of additional users.
99.times do |n|
name  = Faker::Name.name
email = Faker::Internet.email
password = "password"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password)
end