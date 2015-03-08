#1
=begin
They are all objects.  To find out which class they
belong to call the .class method on them.
=end

#2
#First include the Speed module in both the Car and Truck classes.
#Then instantiate and test to see if we can call the 'go_fast'
#method from those two claesses.

=begin
include Speed

car = Car.new
truck = Truck.new

puts car.go_fast
puts truck.go_fast
=end

#3
=begin
Notide that the go_fast method calls self.class
By doing so we are calling .class on whichever type
of object is calling the go_fast method.  In this case
these are a Car and Truck object respectively.
That is how we get the name of the class.
=end

#4
=begin
We create a new instance of the AngryCat class by calling
the .new or .allocate methods.  Something like
whiskers = AngryCat.new
=end

#5
=begin 
The pizza class has an instance variable.
Instance variables are prepended with an '@' .
In this case it's the instance variable @name.
=end

#6
=begin
You could do two things.
You get create either an attr_reader
or attr_accessor. This would create
getter methods for the @volume instance
variable.  
Alternatively, we could create a getter method ourselves
and have ti return @volume:

def get_volume
  @volume  
end
=end

#7
=begin
By default ruby prints out
the object_id and the class type

We can check the Ruby documentation
for more information.   
=end

#8
=begin
self refers to the instance of the class that this method is being sent
to.  If we create a getter method, we need to be able to differentiate
between local variables in a method and instance variables.  We do that
by calling self.'instance variable' .
=end

#9
=begin
In this context, self refers to the Class itself.
We are calling a class method when we call cats_count. 
=end

#10
=begin
a_bag = Bag.new('brown','paper')
=end





















