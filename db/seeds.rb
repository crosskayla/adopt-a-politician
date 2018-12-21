# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# voter = Voter.create(username: "kayla@kayla.com", age: 25, dollars: 1000, admin: true)
#
# voter.password = "supersecure"
# voter.save
#
# politicians = Politician.create([
#   {name: "Bernie Sanders", party: "Independent"},
#   {name: "Tim Kaine", party: "Democrat"},
#   {name: "Susan Collins", party: "Republican"},
#   {name: "Ed Miliband", party: "Labour"},
#   {name: "George Washington", party: "None"},
#   {name: "Abraham Lincoln", party: "Republican"}
# ])


sean = Voter.find_by_username("sean@sean.com")
donation = Donation.new(dollars: 27, description: "here ya go!")
donation.politician = Politician.find_by_name("Bernie Sanders")
donation.voter = sean
donation.save
