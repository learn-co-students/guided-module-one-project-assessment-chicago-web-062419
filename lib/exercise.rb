class Exercise
    has_many :users
    has_many :users, through: :exercise_plans
end