class CreateAppointments < ActiveRecord::Migration[5.2] 
    def change
        create_table :appointments do |t|
            t.string :appointment_date 
            t.integer :student_id
            t.integer :tutor_id
        end 
    end 
end  
 