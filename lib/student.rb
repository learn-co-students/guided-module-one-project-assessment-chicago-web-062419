class Student < ActiveRecord::Base
    ##Create relationships here! 
    has_many :appointments 
    has_many :tutors, through: :appointments
end 