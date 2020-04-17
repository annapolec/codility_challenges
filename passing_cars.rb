# PassingCars
# Count the number of passing cars on the road.

def solution(a)
  cars_going_east = [0]

  a.each do |direction|
    next_counter = direction.zero? ? cars_going_east.last + 1 : cars_going_east.last
    cars_going_east << next_counter
  end

  passings = 0
  a.each_with_index do |direction, index|
    passings += cars_going_east[index] if direction == 1
  end

  return -1 if passings > 1000000000
  passings
end
