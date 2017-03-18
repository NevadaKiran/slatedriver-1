# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user = User.create!([
    { email:"k@k.com", password: "kwordkword", username: "Koty"},
    { email:"b@b.com", password: "bwordbword", username: "Badger"},
    { email:"c@c.com", password: "cwordcword", username: "Christine"},
    { email:"d@d.com", password: "dworddword", username: "David"},
    { email:"e@e.com", password: "ewordeword", username: "Erica"},
])


Slate.destroy_all
slate = Slate.create([

    { name:"Libertarian choice", election_cycle: "2016"},
    { name:"Bobby's choice", election_cycle: "2016"},
    { name:"Christine's choice", election_cycle: "2020"},
    { name:"David's choice", election_cycle: "Interim Election"},
    { name:"Eric's choice", election_cycle: "2016"},
    { name:"Cthulhu's choice", election_cycle: "2016"},
])

Issue.destroy_all
issue = Issue.create([
    { slate_id: 1, name: "Presidential Choice", choices: "Trump vs Hillary", recommendation: "Trump is an indepenant black woman"},
    { slate_id: 2, name: "Gotham City Council", choices: "Batman vs Joker", recommendation: "Joker promises to bring down the corrupt system"},
    { slate_id: 3, name: "GA Senate Choice", choices: "Christine vs Koty", recommendation: "Christine hates Angular"},
    { slate_id: 4, name: "General Assembly", choices: "Cthulhu vs Kracken", recommendation: "Cthulhu is not the lessor evil"},
    { slate_id: 5, name: "Choice of Hero", choices: "Harambe vs Toddler", recommendation: "Harambe took a shot for you"},
])
