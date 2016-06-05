class MathDojo
	#sets up 'result' to be changed and pulled
	attr_accessor :result

	#initializes the class
	def initialize 
		@result = 0 #sets to 0 to begin
		puts "Number Initialized" #Check if @result was initialized correctly
	end

	# add method
	def add(*numbers) # *numbers allowed varied parameters to be passed
		if numbers.class == Array
			#.class returns the class of object. If array do this: 
			@result += numbers.flatten.inject(:+)
			# flatten squeezes all arrays into one array
			#inject combines all elements by applying the operator (:+)
		else
			@result += numbers
			# adds the passed in numbers parameter(s) to the @result attribute 
		end # end the if check
		self 
		# 'self' allows chaining, returns @result for the class 
	end

	# subtract method
	def subtract(*numbers)
		if numbers.class == Array
			@result -= numbers.flatten.inject(:+) 
			# + here because the goal is to add each number in array first, then subtract that 
		else
			@result -= numbers
		end
		self
	end






end #end MathDojo class

# ruby mathdojo.rb --> this should print "Number Initialized", because a new class of MathDojo was created!
MathDojo.new


puts MathDojo.new.add(2).result
# prints 2
# .result displays the the latest total, accessible without method because it is set up as an attr_accessor above 

puts MathDojo.new.add(2, 3).add(5).result
# prints 10

puts MathDojo.new.add([3,5,1], [2,5]).subtract([2,3], 1).result
# prints 10




