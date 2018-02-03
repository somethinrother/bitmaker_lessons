def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  array.reduce(0) do |sum, number|
    sum += number
  end
end
