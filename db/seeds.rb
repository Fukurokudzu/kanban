# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

SEEDS_AMOUNT = 5

def seed_entity(amount = SEEDS_AMOUNT, &blk)
  raise 'No block given' unless block_given?

  amount.times do |i|
    blk.call(i)
  end
end

User.destroy_all
Project.destroy_all
List.destroy_all
Card.destroy_all

User.create(email: 'sergei.fukurokudzu@gmail.com')

User.all.each do |user|
  seed_entity { |i| Project.create(title: "test project #{i}", user_id: user.id) }
end

Project.all.each do |project|
  seed_entity { |i| List.create(title: "test list #{i}", project_id: project.id) }
end

List.all.each do |list|
  seed_entity { |i| Card.create(title: "test card #{i}", description: "impsum lorum #{i}", list_id: list.id) }
end
