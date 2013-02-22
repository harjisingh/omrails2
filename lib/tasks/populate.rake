namespace :db do
  desc "Fill data base with sample data"
  task :populate => :environment do
    User.create!(name: "Harji Singh"
                 email: "harjis@mac.com" 
                 password: "ladoo123"
                 password_confirmation: "ladoo123")
    10.times do |n|
      name = Faker::Name.name
      email = "user-#{n+1}@example.com"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
end
