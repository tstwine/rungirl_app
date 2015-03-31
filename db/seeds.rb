# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 #runner1 = Runner.create({ name: 'Tina', email: 'tinattwine@gmail.com'})
 #runner1 = Runner.create({ name: 'Tina', email: 'tinattwine@gmail.com'})
 Distance.destroy_all
 distance1 = Distance.create({date: "10/26/14", time: "6.5hrs"})
 distance2 = Distance.create({date: "10/03/14", time: "4.0hrs"})
 distance3 = Distance.create({date: "03/3/15", time: "54.5mins"})
 distance4 = Distance.create({date: "03/21/15", time: "1.59mins"})

# Distance.destroy_all
# Distance.create([
# 	{date: 'distance1', time: '6.5hrs'])}
# 	{date: 'distance2', time: '4.0hrs'])}
# 	{date: 'distance3', time: '54.5mins'])}
# 	{date: 'distance4' time: '1.59mins'])}
