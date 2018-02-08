# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
instructor1 = Instructor.create(username:"erick", password:"123", name: "Erick Camacho", location: "Manhattan", rating: 4.3, rate: 30, level: "Intermiediate", picture: "https://avatars2.githubusercontent.com/u/23504970?s=460&v=4", user_type: "instructor")
instructor2 = Instructor.create(username:"cool", password:"123", name: "Cool Camacho", location: "Manhattan", rating: 4.3, rate: 30, level: "Intermiediate", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4", user_type: "instructor")

Student.destroy_all
student1 = Student.create(username: "jerry", password:"1234", name: "Jerry Camacho", location: "Manhattan", rating: 4.3, level: "Beginner", picture: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/16831030_1107094622749803_588312107712409322_n.jpg?oh=56d45bb8676c2c7c1a235363661fdda8&oe=5ADFB3D3", user_type: "student")
student2 = Student.create(username: "stevester", password:"2006", name: "Steve Camacho", location: "Staten Island", rating: 4, level: "Beginner", picture: "https://avatars3.githubusercontent.com/u/28971854?s=460&v=4", user_type: "student")

Session.destroy_all
session1 = Session.create(instructor: instructor1, student: student1, start_time:"2018-01-02 19:00:46Z", end_time:"2018-01-02 20:00:46Z", completed_status: false, status: 'active')
session2 = Session.create(instructor: instructor2, start_time:"2018-01-03 19:00:46Z", end_time:"2018-01-03 20:00:46Z", completed_status: false, status: 'inactive')
session3 = Session.create(instructor: instructor1, start_time:"2018-01-02 21:00:46Z", end_time:"2018-01-02 22:00:46Z", completed_status: false, status: 'inactive')
