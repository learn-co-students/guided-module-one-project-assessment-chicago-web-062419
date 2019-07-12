class Appointment < ActiveRecord::Base
    ##Create relationships here! 
    belongs_to :student
    belongs_to :tutor  
end 