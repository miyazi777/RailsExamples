# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dept1 = Dept.create(name: 'dept1')

User.create(name: 'user1', dept: dept1)
User.create(name: 'user2', dept: dept1)
User.create(name: 'user3', dept: dept1)
