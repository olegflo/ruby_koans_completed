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

  validate(a, b, c)

  if a == b && b == c
    value = :equilateral
  else
    if (a == b) || (b == c) || (c == a)
      value = :isosceles
    else
      if (a != b) && (b != c) && (c != a)
        value = :scalene
      end
    end
  end

  return value
end

def validate(a, b, c)
  if a == 0 && a == b && b == c
    raise TriangleError.new
  end

  if (a < 0) || (b < 0) || (c < 0)
    raise TriangleError.new
  end

  if (a > b + c) || (b > a + c) || (c > a + b)
    raise TriangleError.new
  end

  if (a == b + c) || (b == a + c) || (c == a + b)
    raise TriangleError.new
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
