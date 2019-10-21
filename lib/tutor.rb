class Tutor < ActiveRecord::Base
    ##Create relationships here! 
    has_many :appointments
    has_many :students, through: :appointments 
end 