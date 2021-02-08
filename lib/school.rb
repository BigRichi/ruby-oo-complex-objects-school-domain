require 'pry'
class School

    attr_accessor :name, :hash, :student, :grade

    def initialize(name)
        @name = name
        @hash = Hash.new{}

    end

    def roster
        hash 
    end

    def add_student(student, grade)
        # binding.pry
        if hash[grade]
            hash[grade] << student
        else
            hash[grade] = []
            hash[grade] << student
        end
        hash
    end

    def grade(grade)
        hash[grade]
    end

    def sort
        hash.sort.to_h
    end
end

# school = School.new("Bayside High School")
# p school.roster
# school.add_student("Zach Morris", 9)
# school.add_student("Nick Morris", 9)
# school.add_student("Jamie Morris", 9)
# school.add_student("Jamie Morris", 8)
# p school.roster
# p school.sort

# school.roster