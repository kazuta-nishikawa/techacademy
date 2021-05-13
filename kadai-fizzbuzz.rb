num_max = 100

# 3の倍数Fizz,５の倍数Buzz,３と５FizzBuzz
def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
        'FizzBuzz'
    elsif num % 3 == 0
        'Fizz'
    elsif num % 5 == 0
        'Buzz'
    else
        num
    end
end

num = 0
while  num <= num_max
    puts fizzbuzz(num)
    num += 1
end

