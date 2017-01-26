# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do
# 	User.create({
# 		name: Faker::Name.name,
# 		age: Faker::Number.between(1, 10)
# 	})
# end

50.times do
	Run.create(
		distance: Faker::Number.decimal(2, 1),
		time: Faker::Number.decimal(2, 1),
		date: Faker::Time.between(2.years.ago, Date.today, :all),
		user_id: Faker::Number.between(1, 10)
	)
end
