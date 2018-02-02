# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
instructor1 = Instructor.create(username:"Erick", password_digest:"123", name: "Erick Camacho", location: "Manhattan", rating: 4.3, rate: 30, level: "Intermiediate", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4")
instructor2 = Instructor.create(username:"Cool", password_digest:"123", name: "Cool Camacho", location: "Manhattan", rating: 4.3, rate: 30, level: "Intermiediate", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4")

Student.destroy_all
student1 = Student.create(username: "Jerry", password_digest:"1234", name: "Jerry Camacho", location: "Manhattan", rating: 4.3, level: "Beginner", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4")
student2 = Student.create(username: "Stevester", password_digest:"2006", name: "Steve Camacho", location: "Staten Island", rating: 4, level: "Beginner", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4")

Reservation.destroy_all
reservation1 = Reservation.create(student: student1)
reservation2 = Reservation.create(student: student1)
reservation3 = Reservation.create(student: student2)

Session.destroy_all
session1 = Session.create(instructor: instructor1, start_time:"2018-01-02 19:00:46Z", end_time:"2018-01-02 20:00:46Z", reservations:[reservation1])
session2 = Session.create(instructor: instructor2, start_time:"2018-01-03 19:00:46Z", end_time:"2018-01-03 20:00:46Z", reservations:[reservation2])
session3 = Session.create(instructor: instructor1, start_time:"2018-01-02 21:00:46Z", end_time:"2018-01-02 22:00:46Z", reservations:[reservation3])
