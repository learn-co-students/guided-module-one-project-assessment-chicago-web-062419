 Tutor.destroy_all   
 Student.destroy_all   
 Appointment.destroy_all   
    
karen = Tutor.create(name: "Karen Jones", subject:"Chemistry") 
quinn = Tutor.create(name: "Quinn Williams", subject:"Arabic")
joseph = Tutor.create(name: "Joseph Hawkins", subject:"Torts")
younghee = Tutor.create(name:"Younghee Lee", subject:"Korean")
baron = Tutor.create(name: "Baron Lip", subject: "Web Development")
paul = Tutor.create(name: "Paul Roberts", subject:"Astrology")  

bob = Student.create(name: "Bob")
dan = Student.create(name: "Dan")
ed = Student.create(name: "Ed")


Appointment.create(student_id: bob.id, tutor_id: karen.id, appointment_date:"Today")
Appointment.create (student_id: dan.id, tutor_id: quinn.id, appointment_date:"Tomorrow")