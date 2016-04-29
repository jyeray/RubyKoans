# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  check_triangle_sides a, b, c
  sides = [a, b, c].uniq
  return :equilateral if sides.count == 1
  return :scalene if sides.count == 3
  :isosceles
end

def check_triangle_sides(a, b, c)
  sides=[a, b, c].sort
  if sides[0] <= 0
    raise TriangleError, "At least one side is 0 or negative."
  end
  if (sides[0] + sides[1]) <= sides[2]
    raise TriangleError, "The add of the shortest sides of the triangle must be greater than the greater side."
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
