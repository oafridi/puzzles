cases = gets.strip.to_i

def buy_chocs
  @chocs = @n / @c
  @wrappers = @chocs
end

def trade  
  free_chocs = @wrappers / @m
  @chocs += free_chocs
  @wrappers = (@wrappers % @m) + free_chocs
end

cases.times do
  input = gets.strip.split('').map(&:to_i)  
  
  @n = input[0]
  @c = input[1]
  @m = input[2]

  @chocs = 0
  @wrappers = 0

  buy_chocs

  while @wrappers >= @m
    trade
  end

  puts @chocs
end