def even_next(n)
  n = n / 2
end

def odd_next(n)
  n = n * 3 + 1
end

def next_value(n)
  n.even? ? n = even_next(n) : n = odd_next(n)
  n
end

def collatz(n)
  collatz_seq = Array.new
  until n == 1
    collatz_seq << n
    n = next_value(n)
  end
  collatz_seq << 1
  collatz_seq
end

def longest_collatz
  max_collatz = Array.new
  longest_collatz_num = 0
  (1000000).downto(1) do |x|
    new_collatz = collatz(x)
    if new_collatz.length > max_collatz.length
      max_collatz = new_collatz
      longest_collatz_num = x
    end
  end
  longest_collatz_num
end