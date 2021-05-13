#こんにちは、と表示するプログラミングです。
# puts 'こんにちは'

class Character
end

class Slime < Character
end

character = Character.new
slime_A = Slime.new

puts character.class
puts slime_A.class

puts Slime.superclass 