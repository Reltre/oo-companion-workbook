#1
=begin 
case 1: 'Hello' is outputted.
case 2: We get an error.  There is no method 'bye'.
case 3: ArgumentError is thrown.  The greet method takes 1
argument and we passed it none.
case 4: 'Goodbye' is outputted.
case 5: We get an undefined method error.  We are trying to call
the 'hi' method as a class method.  It is an instance method.
=end

#2
#We can prepend self. to the 'hi' method.  This will make it a 
#class method.

#3
=begin 
cat1 = AngryCat(15,"Whiskers")
cat2 = AngryCat(3,"Doodle")
=end

#4
=begin 
We could define our own to_s method in our Cat class.

def to_s 
  "I am a #{@type} cat."
end
=end

#5
=begin 
The calls tv.manufacturer and Television.model
would give up an error.
=end

#6
=begin 
Another way to call make_one_year_older would be to call the
instance variable directly with @age instead of self.age.
=end

#7
=begin 
Using self.display_information doesn't make much sense here.
It would be better for this to be an instance method and in the 
return statement we can pass in brightness and color getter methods
via string interpolation.

We also don't need to explicitly call return since the last line of a 
method is automatically returned.
=end

#8







