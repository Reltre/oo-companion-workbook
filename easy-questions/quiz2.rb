#1
=begin
Calling "oracle = Oracle.new" gives us a new instance of he Oracle class.
Calling "oracle.predict_the_future" returns a random item from the array of 
choices. 
=end

#2
=begin 
In this case our RoadTrip class overrides the choices method
that would normally be called from the Oracle class. 
So when choices.sample is eventually called from the 
predict_the_future we get a random element from the choices in 
the road trip class.
=end

#3
=begin 
You can find where Ruby will look for methods to call by calling obj.ancestors
Orange.ancestors => Taste,Object,Kernel,Basic Object
Hotsauce.ancestors => "Same as above."
=end

#4
#We can add an attr_accessor :type to remove the getter and setter for the 
#instance variable type variable.

#5
=begin
excited_dog : local variable 
@excited_dog : instance variable
@@excited_dog : class variable
EXCITED_DOG : Constant

We can tell by how the variables are denoted
just the name of the variable alone and uncapped
means it's a local variable.  
One '@' denotes a instance variable
Two '@' denotes a class variable
A variable in all caps denotes a constant. It could
also just be capitalized.
=end

#6
=begin
If we prepend a method with 'self.' , we are declaring it to 
be a class method.  You call class methods like so
'class name'.'method', e.g.  Array.ancestors 
=end

#7
=begin 
The @@cats_count variable keeps track of how many Cat
objects we have instantiated. We can test this by creating a 
few instances of Cat and then calling Cat.cats_count

cat1 = Cat.new("Calico")
cat2 = Cat.new("Tabby")
Cat.cats_count
=end

#8
=begin 
We can add '< Game' to the right of the Bingo class name 
in the class definition.  So like this:

class Bingo < Game
  #Methods
end

=end

#9
=begin
If we added a play method to the Game class, it would overrid
the play method in the Game class.  In the method lookup chain,
we start with the calling class, in this case the Bingo class.
So it's play method would be found first and thus called instead
of the one in the game class.
=end

#10
=begin 
1) Keeps errors localized to methods.
2) Lessens the coupling of our program
3) Makes our code a lot cleaner.
4) Allows us to alter our code in a far more efficient
manner.
5)Allows our code to be more modular.
=end


























