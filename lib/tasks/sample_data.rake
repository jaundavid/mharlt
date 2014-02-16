namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                         email: "admin@admin.co",
                         password: "admin123",
                         password_confirmation: "admin123",
                         admin: true)
    1.times do |n|
      name  = Faker::Name.name
      email = "example-#{n*10+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
