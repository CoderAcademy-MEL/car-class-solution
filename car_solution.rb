require_relative 'car'

holden = Car.new({year: 2009, mileage: 3457, make: 'holden', colour: 'red', passengers: 6})

p holden.description

commute_distance = 10

10.times do
  holden.drive(commute_distance)
  p holden.description
end

ford = Car.new({year: 1965, mileage: 500_045, make: 'ford', colour: 'blue', passengers: 7})

p ford.is_vintage?
p holden.is_vintage?

ford.description

fleet_cars = []

suzuki = Car.new({
  year: 1987,
  mileage: 467_238,
  make: 'suzuki',
  colour: 'green',
  passengers: 5
})

toyota = Car.new(
  year: 2010,
  mileage: 463,
  make: 'toyota',
  colour: 'purple',
  passengers: 7
)

fleet_cars << holden
fleet_cars << ford
fleet_cars << toyota
fleet_cars << suzuki

fleet_cars.each do |car|
  p car.description
end

p Car.can_fit_entire_cohort?(24)