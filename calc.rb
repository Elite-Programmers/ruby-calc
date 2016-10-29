def add(a,b)
  return a + b
end

def sub(a,b)
  return a - b
end

def mul(a,b)
  return a*b
end

def div(a,b)
  begin
    c = a / b
    return c
  rescue ZeroDivisionError
    return "∞"
  else
    return "Unable to decide"
  end
end

i = 0
while i == 0
  puts "Options :"
  puts "Enter 'add' to add two numbers"
  puts "Enter 'sub' to subtract two numbers"
  puts "Enter 'mul' to multiply two numbers"
  puts "Enter 'div' to divide two numbers"
  puts "Enter 'quit' to quit"
  usr_inp = gets.chomp
  if usr_inp == 'quit'
    puts "Quitting"
    i = 1
    break
  end
  puts "Enter 1st number :"
  a = gets.chomp.to_i
  puts "Enter 2nd number :"
  b = gets.chomp.to_i
  if usr_inp == 'add'
    z = add(a,b)
  elsif usr_inp == 'sub'
    z = sub(a,b)
  elsif usr_inp == 'mul'
    z = mul(a,b)
  elsif usr_inp == 'div'
    z = div(a,b)
  else
    puts "Invalid Choice"
  end
  puts "Answer is #{z}"
end
