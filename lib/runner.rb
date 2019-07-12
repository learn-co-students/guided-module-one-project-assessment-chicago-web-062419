# def greet 
#     puts "It's Tutor Time!"
#     puts  "Welcome! What would you like to do?" 
#     puts  "Menu"
#     puts  "1. Book Tutor"
#     puts  "2. View Appointments" 
#     puts  "3. Update Session"
#     puts  "4. Cancel Tutoring"
#         menu_selection = gets.chomp 
#         if menu_selection = 1 #Book Tutor 
            # puts "Who do we have the pleasure of tutoring today?" 
            #  def book_tutor
            #     user_name = gets.chomp 
            #     student = insert_user_name(user_name)
            #     list_of_tutors 
            #     tutor_name = gets.chomp 
            #     appointment_date = get_a_time
            #     find_appointment(tutor_name, student, appointment_date)
            #  end 
          
            #  def insert_user_name(user_name) 
            #     student = Student.find_or_create_by(name:user_name)
            #        puts "Welcome,#{student.name}! Let's get to work,choose a tutor (first and last name please!):" 
            #     student   
            #  end 
          
            #  def list_of_tutors
            #     selected_tutor = Tutor.all.collect do |tutor|
            #        puts "#{tutor.name}: #{tutor.subject}"
            #     end 
            #  end
          
            #  def get_a_time
            #     puts "What time are you available to meet?"
            #     appointment_date = gets.chomp
            #     appointment_date
            #  end 
          
            #  def find_appointment(tutor_name, student, appointment_date)
            #     tutor = Tutor.find_by(name: tutor_name)
            #     new_appointment = Appointment.create(student_id: student.id, tutor_id: tutor.id, appointment_date: appointment_date)  
            #     puts "Wonderful! It's Tutor Time! #{tutor.name} will see you at #{appointment_date}!"
            #  end 
            #  book_tutor
#             elsif menu_selection = 2 #View Appointments 
#                 puts "Who do we have the pleasure of tutoring today?" 
#                 student = Student.find_or_create_by(name:user_name)
#                 def see_my_appointment(student)
#                     puts "Here are your scheduled appointments:"
#                      my_appointment = Appointment.find_by(student_id:student)
#                     p my_appointment
#                 end 
#             see_my_appointment
#         end
# end  
         
            
        #     elsif menu_select = 3 #Update Session 
        #             def install_user
        #                 user_name = gets.chomp 
        #                 student = Student.find_or_create_by(name:user_name)
        #                 student
        #             end 
        #                 def update_your_tutoring_session_time(appointment_date)
        #                     puts "What time was the appointment that you'd like to change?"
        #                     appointment_date = gets.chomp 
        #                     new_appointment = Appointment.find_by(appointment_date:appointment_date)
        #                     puts "What time would you like to change your appointment to?"
        #                     new_appointment_time = gets.chomp 
        #                     new_time = new_appointment.update(appointment_date:new_appointment_time)
        #                     puts "You're all set for #{new_time}! Thank you for using Tutor Time!"
        #                 end 
        #             elsif menu_select = 4 
        #                 def install_user
        #                     user_name = gets.chomp 
        #                     student = Student.find_or_create_by(name:user_name)
        #                     student
        #                 end 
        #                 def cancel_an_appointment(appointment_date)
        #                     puts "What time was the appointment that you'd like to cancel?"
        #                     appointment_date = gets.chomp
        #                     Appointment.where(appointment_date:appointment_date).destroy_all
        #                     puts "Thank you! Your appointment has been cancelled."
        #                  end 
        #     end 
        # end  