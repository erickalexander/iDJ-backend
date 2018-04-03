# IDJ Back-End

IDJ is a platform which connects aspiring DJs to professionals to receive mentorship and instruction. In the application, a user can either be a student or an instructor but not both. As an instructor, you can create sessions for students in the area to book. IDJ helps instructors keep track of when are their upcoming appointments with students as well as see how much money they have made since starting delivering mentorship and instruction in the platform. A student can book appointments with instructors in their area. Currently, students and instructors are matched through their location in this case just their borough.

* Link to frontend repo: https://github.com/erickalexander/idj-frontend
* Link to Demo: https://www.youtube.com/watch?v=4tF7G13PdFE

## Getting Started
1. Fork and Clone this repo
2. Navigate to the directory in your terminal and run bundle install
3. Run rails db:create to create a database table
4. Run migrations with rails db:migrate
5. Run rails s to start the server

## Built with
* Ruby
* Rails
* Postgres

## Future Improvements
* Add Google Maps API for both student and instructor convenience
* Add Chatbox to allow for immediate communication after an appointment is booked.
* Add email to notify instructors and students when an appointment is booked
