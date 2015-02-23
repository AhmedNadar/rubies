class Student

	attr_reader :first_name, :last_name, :grade
	def initialize( first_name, last_name, grade )
	  @first_name,@last_name, @grade = first_name,last_name, grade
	end

	def to_s
		"#{first_name}, #{last_name}"	
	end

	def senior?
		grade >= 7
	end
end

def seniors(students)
	## long process using each
	# senior_students = []
	# students.each do |student|
	# 	senior_students << student if student.senior?
	# end
	# return senior_students

	# ushort becasue Select return an array
	students.select { |student| student.senior? }
end


ahmed = Student.new("Ahmed", "Nadar", 110)	
suzy = Student.new("Suzanne", "Nadar", 7)	
nad = Student.new("Nada", "Ahmed", 4)	
lalo = Student.new("Bilal", "Ahmed", 1)	

all_students =  [ ahmed, suzy, nad, lalo ]


seniors(all_students).each do |student|
	puts student
end


