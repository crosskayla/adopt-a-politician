# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

voters = Voter.create([
  {username: "kayla@kayla.com", password_digest: "supersecure", age: 25, dollars: 1000, admin: true},
  {username: "sean@sean.com", password_digest: "wethebestmusic", age: 25, dollars: 10000, admin: false}
])

politicians = Politician.create([
  {name: "Bernie Sanders", party: "Independent", dollars: 0},
  {name: "Tim Kaine", party: "Democrat", dollars: 0},
  {name: "Susan Collins", party: "Republican", dollars: 0}
])
