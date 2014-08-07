class Student
	attr_accessor :first_name, :last_name, :primary_phone_number

	def introduction (target)
		puts "Hi #{target}, my name is #{first_name}."
	end
end

sukwon = Student.new
sukwon.first_name = "Sukwon"

sukwon.introduction("Wonjeong")
