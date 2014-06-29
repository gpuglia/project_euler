def smallest_multiple(n, res=n)
  return res if n == 1

  res *= (1..n).find { |x| ((res * x) % n) == 0 }
  smallest_multiple(n - 1, res)
end


p smallest_multiple(10) == 2520
p smallest_multiple(20)