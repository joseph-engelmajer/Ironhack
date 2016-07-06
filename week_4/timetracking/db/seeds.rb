# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

proj1 = Project.create(name: "Dat Boi", description: "o shit wuddup?")
proj2 = Project.create(name: "Dem Bois", description: "We dem bois!")
proj3 = Project.create(name: "hootyhoo", description: "outkast shit")
proj4 = Project.create(name: "really important", description: "this ain't no joke")
proj5 = Project.create(name: "boom", description: "it blew up")
proj6 = Project.create(name: "travel", description: "everywhere")
proj7 = Project.create(name: "ironhack", description: "code camp")
proj8 = Project.create(name: "copperhack", description: "reddish code camp")
proj9 = Project.create(name: "platinum hack", description: "fancy code camp")
proj10 = Project.create(name: "plastic hack", description: "bootlegged code camp")

#====================================================================================================
#====================================================================================================
#====================================================================================================

TimeEntry.create(project_id: proj1.id, hours: 2, minutes: 30, comments: "hello", date: Time.now)
TimeEntry.create(project_id: proj1.id, hours: 1, minutes: 0, comments: "heyy", date: Time.now)
TimeEntry.create(project_id: proj1.id, hours: 4, minutes: 45, comments: "yooo", date: Time.now)
TimeEntry.create(project_id: proj2.id, hours: 0, minutes: 40, comments: "yoyo", date: Time.now)
TimeEntry.create(project_id: proj3.id, hours: 3, minutes: 30, comments: "oh no", date: Time.now)
TimeEntry.create(project_id: proj2.id, hours: 1, minutes: 15, comments: "wow!", date: Time.now)
TimeEntry.create(project_id: proj4.id, hours: 6, minutes: 20, comments: "hey there", date: Time.now)