# What does the following code print? Explain how the @bark instance variable is used in the speak() method.

# class Dog
#   def initialize
#     @bark = "ruff ruff"
#   end

#   def speak
#     "I like to #{@bark}"
#   end
#     def hi
#     "I like to #{@bark}"
#   end
# end

# fido = Dog.new
# puts fido.speak
# puts fido.hi

# ====================================================================================================

# class Computer
#   def initialize
#     @sound = "beep beep"
#   end

#   def self.about
#     "Sometimes I go #{@sound}"
#   end
# end

# p Computer.about


# ====================================================================================================

# class Something
#   def meaning_of_life
#     @result ||= result
#     "The meaning of life is the number #{@result}"
#   end

#   def result
#     x=22
#     y=7
#     z=x/y
#     amount = Math::PI
#     # a="#{'%.2f' % z}"
#   end
# end

# something = Something.new
# p something.meaning_of_life

# ====================================================================================================

# class Cup
#   PURPOSE = "hold liquids"
#   def main_use
#     PURPOSE
#   end
# end

# tea_cup = Cup.new
# p tea_cup.main_use

# ====================================================================================================

# class Chair
#   AGE = "been around the block"
#   def self.about
#     "I'm old and I've #{AGE}"
#   end
# end
# p Chair.about

# ====================================================================================================

# class Pig
#   def weight()
#     "500 pounds"
#   end

#   def main_desire()
#     "eat all day and be more than #{weight()}"
#   end
# end

# piggy = Pig.new()
# p piggy.main_desire()

# ====================================================================================================


# class Fan
#   def self.about
#     "my job is to keep people cool"
#   end
# end

# p Fan.about


# ====================================================================================================


# class Woman
#   SELF = self
# end

# p Woman::SELF

# ====================================================================================================

# class Calculator
#   def add(x, y)
#     x + y
#   end
# end
# my_calculator = Calculator.new
# p my_calculator.send(:add, 3, 4)

# ====================================================================================================


# p 3.send(:+, 4)

# ====================================================================================================


# class Circle
#   def area(radius)
#     calc = Calculator.new
#     calc.pi * radius ** 2
#   end
# end

# class Calculator
#   def pi
#     3.14
#   end
# end

# my_circle = Circle.new
# p my_circle.area(1)


# ===============question 1=====================================================================================
# The Dog class inherits from the Mammal class so the Dog class has access to all the methods that are defined in the Mammal class.

# class Mammal
#   def warm_blooded?
#     true
#   end
# end

# class Dog < Mammal; end

# fido = Dog.new
# p fido.warm_blooded?

# ====================================================================================================

# class Cat < Object
# end
# class Cat
# end
# a = Cat.new
# p a

# class Parent
#   def status
#     "I am happy"
#   end
# end

# class Child < Parent
#   def status
#   	super
#     "ARGH"
#   end
# end

# a =Child.new
# p a.status

# ====================================================================================================

# class Person
#   def initialize
#     @first_name = "darshan"
#     @last_name = "hi"
#   end

#   def full_name
#     "#{@first_name} #{@last_name}"
#   end
# end

# class Doctor < Person
#   def full_name
#     "Dr. #{super}"
#   end
# end

# dr_phil = Doctor.new
# p dr_phil.full_name

#==============question2===========================================================================================
# The Textbook class is initialized with a hash that mush contain the key :chapters. The Textbook#initialize method overwrites the Book#initialize method, so a Textbook object does not need to be initialized with a hash containing :pages or :title. initialize() is just like any other method that can be overwritten with inheritance.

# textbook = Textbook.new({ chapters: 20 }) 

# class Book
#   def initialize(args)
#     @pages = args.fetch(:pages)
#     @title = args.fetch(:title)
#   end
# end

# class Textbook < Book
#   def initialize(args)
#     @chapters = args.fetch(:chapters)
#   end
# end

#============question3========================================================================================

# class Planet
#   def initialize(mass, volume)
#     @mass = mass
#     @volume = volume
#   end
# end

# class Saturn < Planet
#   def initialize(mass, volume, number_of_rings)
#     super(mass, volume)
#     @number_of_rings = number_of_rings
#   end
# end

#   p saturn = Saturn.new(500, 200, 2)

#=====================================================================================================

# module M
#   def hi
#     'hey hey'
#   end
# end

# class A
#   include M
# end

# p A.instance_methods.include? :hi

#=====================================================================================================
# module Stuff
#   def self.hi
#     'hey there partner'
#   end
# end

# class Lamp
#   include Stuff
# end

# p Lamp.hi

#=====================================================================================================

# module AAA
#   def hi; 'AAA#hi'; end
# end

# class Money
#   # class << self
#     include AAA
#   end
# # end

# obj = Money.new
# p obj.hi

#=====================================================================================================

# module AAA
#   def hi; 'AAA#hi'; end
# end

# class Money
#   extend AAA
# end

# p Money.hi

#=====================================================================================================

# module Bob
#   def job
#     "gettin' loaded"
#   end
# end

# class A 
# 	include Bob
# end

# obj = A.new
# p obj.job

#=====================================================================================================

# my_array = [10, 20, 30]
# my_array[0] = "bob"
# p my_array
# another_arr = [10, 20, 30]
# p another_arr.map {|num| num == 20 ? "bob" : num}

#=====================================================================================================

# ['a', 'b'].each do |letter|
#   hangout = letter + ' bar'
#   p hangout
# end

# colors = ['red', 'violet','blue']
# result = []
# colors.each_with_index do |color, index|
#  print result << [color, index  + 1]
# end


#=====================================================================================================

# blockbusters = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]
# p Hash[blockbusters]

#=====================================================================================================
# r=[]
# players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
# b = players.map do |first_name,_|
#   r = [first_name]
#   p r
# end

#=====================================================================================================
# numbers = [1, 2, 3, 4]
# sum=0
# numbers.map{|a| sum+=a}
# p sum


#=====================================================================================================
# p 7.times.map { |i| 10 ** i }

# numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
# suits = ['spades', 'hearts', 'diamonds', 'clubs']
# result = []
# suits.each do |suit|
#   numbers.each do |number|
#     print result << [number, suit]
#   end
# end


#=====================================================================================================
# music = [["blind melon", "no rain"], ["sublime", "40 oz to freedom"], ["damian marley", "jr gong"]]
# p Hash[music]

# days = ['mon', 'tues', 'wed', 'thur', 'fri']
# p days.index[0,2]

#=====================================================================================================

# time1 = Time.new
# puts "Current Time : " + time1.inspect

#=====================================================================================================


# time = Time.new
# puts "Current Time : " + time.inspect
# puts time.year    
# puts time.month   
# puts time.day     
# puts time.wday    
# puts time.yday    
# puts time.hour    
# puts time.min     
# puts time.sec     
# puts time.usec    
# puts time.zone 

#=====================================================================================================


# # July 8, 2008
# puts Time.local(2008, 7, 8)  
# # July 8, 2008, 09:10am, local time
# puts Time.local(2008, 7, 8, 9, 10)   
# # July 8, 2008, 09:10 UTC
# puts Time.utc(2008, 7, 8, 9, 10)  
# # July 8, 2008, 09:10:11 GMT (same as UTC)
# puts Time.gm(2008, 7, 8, 9, 10, 11)  


#=====================================================================================================


# time = Time.new
# values = time.to_a
# p values


#=====================================================================================================


# Returns number of seconds since epoch
# p time = Time.now.to_i  

# # Convert number of seconds into Time object.
# p Time.at(time)

# # Returns second since epoch which includes microseconds
# p time = Time.now.to_f


#=====================================================================================================

now = Time.now          # Current time
puts now


#=====================================================================================================

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

#=====================================================================================================


future = now + 10  # 10 seconds from now Time + number => Time
puts future


#=====================================================================================================


diff = future - now     # => 10  Time - Time => number of seconds
puts diff