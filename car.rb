require 'date'

class Car
  @@cars = []
  def initialize(hash)
      @make = hash[:make]
      @year = hash[:year]
      @mileage = hash[:mileage]
      @colour = hash[:colour]
      @passengers = hash[:passengers]
      @@cars << self
  end

  def drive(distance)
      @mileage += distance
  end

  def description
      return "Make: #{@make}, Year: #{@year}, Mileage: #{@mileage}, Colour: #{@colour}. #{self.is_vintage?}"
  end

  def is_vintage?
    current_year = Date.today.year
    (current_year - @year) > 30 ? "this car is vintage" : "this car isnt vintage"
  end 

  def get_passengers 
    return @passengers
  end 

  def drive_to_work_for_a_week(commute_distance)
    10.times do 
      puts "driving to work and the distance is #{commute_distance}km"
      self.drive(commute_distance)
      puts self.description
    end 
  end 

  def self.can_fit_entire_cohort?(total_students) 
    total_passengers = []
    @@cars.each do |car|
      total_passengers << car.get_passengers
    end 
    total_passengers = total_passengers.sum
    total_passengers > total_students
  end 
end