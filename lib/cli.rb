   def greet 
      puts "It's Tutor Time!"
      prompt = TTY::Prompt.new 
      prompt.select("Welcome! What would you like to do?", %W(Book Tutor\n, View Appointments\n, Update Session\n, Cancel Tutoring Appointment))
      puts "Who do we have the pleasure of tutoring today?" 
      user_name = gets.chomp 
      student = insert_user_name(user_name)
      list_of_tutors 
      tutor_name = gets.chomp 
      appointment_date = get_a_time
      find_appointment(tutor_name, student, appointment_date)
      # cancel_an_appointment(appointment_date)
      update_your_tutoring_session_time(appointment_date)
      see_my_appointment(student)
   end 

   def insert_user_name(user_name) 
      student = Student.find_or_create_by(name:user_name)
         puts "Welcome,#{student.name}! Let's get to work,choose a tutor (first and last name please!):" 
      student   
   end 

   def list_of_tutors
      selected_tutor = Tutor.all.collect do |tutor|
         puts "#{tutor.name}: #{tutor.subject}"
      end 
   end

   def get_a_time
      puts "What time are you available to meet?"
      appointment_date = gets.chomp
      appointment_date
   end 

   def find_appointment(tutor_name, student, appointment_date)
      tutor = Tutor.find_by(name: tutor_name)
      new_appointment = Appointment.create(student_id: student.id, tutor_id: tutor.id, appointment_date: appointment_date)  
      puts "Wonderful! It's Tutor Time! #{tutor.name} will see you at #{appointment_date}!"
   end 

   def cancel_an_appointment(appointment_date)

      puts "What time was the appointment that you'd like to cancel?"
      appointment_date = gets.chomp
      Appointment.where(appointment_date:appointment_date).destroy_all
      puts "Thank you! Your appointment has been cancelled."
   end 

   def update_your_tutoring_session_time(appointment_date)
       puts "What time was the appointment that you'd like to change?"
       appointment_date = gets.chomp 
       new_appointment = Appointment.find_by(appointment_date:appointment_date)
       puts "What time would you like to change your appointment to?"
       new_appointment_time = gets.chomp 
       new_time = new_appointment.update(appointment_date:new_appointment_time)
       puts "You're all set for #{new_time}! Thank you for using Tutor Time!"
   end 

   
   def see_my_appointment(student)
      puts "Here are your scheduled appointments:"
      my_appointment = Appointment.find_by(student_id:student)
      p my_appointment
   end 

   module ActiveSupport
      class LogSubscriber
        def debug(*args, &block)
        end
      end
    end