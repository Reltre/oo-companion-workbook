#1
=begin
class SecretFile

  def initialize(secret_data,log)
    @data = secret_data
    @log = log
  end

  def data
    @log.create_log_entry
    @data
  end

end

class SecurityLogger

  attr_accessor :logs

  def create_log_entry
    @logs = []
    @logs << "The data has been accessed:#{Time.now}"  
  end

end

logger = SecurityLogger.new
sec = SecretFile.new("secret stuff",logger)
p sec.data
p logger.logs
=end

#2
=begin
module Moveable
  attr_accessor :speed, :heading, :range
  attr_writer :fuel_capacity, :fuel_efficiency

  def range 
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Moveable

  def initialize(tire_array,km_traveled_per_liter,liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  #other methods
end

class Catamaran
  include Moveable

  attr_accessor :propeller_count, :hull_count, :range
  def initialize(num_propellers, num_hulls, km_traveled_per_liter,
   liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end
end
=end

#3
=begin
class SeaCraft
  include moveable

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter,
   liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls   
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

end

class Motorboat < SeaCraft
  def initialize(km_traveled_per_liter,liter_of_fuel_capacity
    super(1,1,km_traveled_per_liter,liter_of_fuel_capacity)
  end
end

class Catamaran < SeaCraft
  def initialize(num_propellers,num_hulls,km_traveled_per_liter,
    liter_of_fuel_capacity)
    super(num_propellers,num_hulls,km_traveled_per_literm,
      liter_of_fuel_capacity)
  end
end
=end

#4
#We can alter our moveable module slightly to check which type of object is
#calling it.
=begin
module Moveable
  #code
  def range
    return (@fuel_capacity * @fuel_efficiency) + 10 if self.is_a?(SeaCraft)
    return @fuel_capacity * fuel_efficiency
  end
end

#Or we can override the range method in Seacraft

class Secraft
  def range
    range_of_seacraft = super
    range_of_seacraft + 10
  end
end
=end
