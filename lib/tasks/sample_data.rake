namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Article.create!(name: "foobar",
                    content: "hello")
    99.times do |n|
      name = Faker::Name.name
      content = Faker::Lorem.sentence
      Article.create!(name: name,
                      content: content)
    end
  end
end