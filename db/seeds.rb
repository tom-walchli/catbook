require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

# Is this the best place to put this kind of seeding?
print "seeding" 
1000.times do |i|
	#Cat.create!(name: Faker::Name.name, birthday: Faker::Date.birthday, email: Faker::Internet.email, password: 'password')
	rand(6).times do |k|
		rand2 = rand(1000)
		if rand2 != i
			FollowerRelation.create(cat_id: i, followed_cat_id: rand2)
		end

	end

	if i%10 == 0 
		print '.'
	end
end


# 	Cat.create!(name: Faker::Name.name, birthday: Faker::Date.birthday)

puts "\nseeded!!"