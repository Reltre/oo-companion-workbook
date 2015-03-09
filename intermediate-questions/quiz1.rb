#1
=begin
class Person
  attr_accessor :lastname
  attr_accessor :firstname

  def <=>(other)
    comparision = self.lastname <=> other.lastname
    return comparison if comparison != 0
    self.firstname <=> other.firstname
  end
end

=end
#2
#Ben is correct, he's not missing an @ sign for balance
#When he uses balance in the positive_balance method he 
#is using the getter method created from attr_reader.

#3
=begin 
I see two mistakes in this code.  quantity is defined as a
attr_reader, yet in update_quantity we try to assign a value to 
it.  Another mistake is having that line of code execute if updated_count
is >= 0.  There doesn't seem to be a point to updating a count by zero. 
=end

#4
=begin 
This is one way to fix it but in doing so you create a getter that is
unnecessary at the moment.  For this method you only need a writer to assign
a new value to quantity.  We can use an attr_writer in this case.

Also, doing it this way gives one unprotected way to update the quantity.  If we
use the instance variable directly instead, we can update the quantity while
keeping our data encapsulated.
=end

#5
=begin
class Greeting
  def greet(word)
    puts word
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class GoodBye < Greeting
  def bye
    greet("GoodBye")
  end
end
=end

#6

=begin
class KrispyKreme
#some code
def to_s
  if @filling_type == nil && @glaze == nil
    "Plain"
  elsif @filling_type == nil && @glaze != nil
    "Plain with #{@glaze}"
  elsif @filling_type != nil && glaze == nil
    "#{@filling_type}"
  else
    "#{@filling_type} with #{@glaze}"
  end
end

end

=end

#7
=begin 
They are technically both the same.  Due to our use of attr_accesor we
can either call template or self.template here.
=end

#8
#I would just rename it to either 'display_infomation' or even 'info'


