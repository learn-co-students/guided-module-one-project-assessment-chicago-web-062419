class CreateAppointments < ActiveRecord::Migration[5.2] 
    def change
        create_table :appointments do |t|
            t.belongs_to :students, index: true 
            t.belongs_to :tutors, index: true 
            t.datetime :appointment_date 
        end 
    end 
end  
