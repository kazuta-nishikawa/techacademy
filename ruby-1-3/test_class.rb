# class Slime
#     attr_accessor :type, :hp, :power, :suffix

#     def initialize(suffix)
#         self.type = 'スライム'
#         self.hp = 10
#         self.power = 3
#         self.suffix = suffix
#     end
    
#     def name
#         self.type + self.suffix
#     end
    
#     def attack(character_name)
#         puts"#{self.name}が#{character_name}を攻撃して#{self.power}ポイントのダメージを与えた！"
#     end
# end

# slime_A = Slime.new('A')
# slime_A.attack('勇者')

# p slime_A

# # クラス定義
# class Sample
  
#   # インスタンスが持つ変数（値）
#   attr_accessor :value1, :value2, :value3
  
#   # インスタンスを初期化するための、特別なメソッド
#   def initialize
#     self.value1 = 'こんにちは'
#     self.value2 = 123
#     self.value3 = true
#   end
  
#   # インスタンスが持つメソッド（処理）
#   def test(name)
#     puts "#{self.value1}、#{name}さん！"
#   end
# end

# # インスタンスの生成と、変数への代入
# sample1 = Sample.new

# # インスタンスの使用
# sample1.test("太郎")

# class Character
#     attr_accessor :type, :hp, :power
    
#     def initialize(type,hp,power)
#         self.type = type
#         self.hp = hp
#         self.power = power
#     end
    
#     def name
#         self.type
#     end
    
#     def attack(character)
#         character.hp -= self.power
#         puts "#{self.name}が#{character.name}を攻撃して#{self.power}のダメージを与えた！"
        
#         if character.hp <= 0
#             self.defeat(character)
#         end
#     end
    
#     def defeat(character)
#         puts"#{self.name}は#{character.name}を倒した！"
#     end

# end

# class Slime < Character
#     attr_accessor :suffix
    
#     def initialize(suffix)
#         super('スライム',10,3)
#         self.suffix = suffix
#     end
    
#     def name
#         super + self.suffix
#     end
# end
    
# class Hero < Character

#     def initialize
#         super("勇者",1000,30)
#     end
# end

# hero = Hero.new
# slime_A = Slime.new('A')

# slime_A.attack(hero)
# hero.attack(slime_A)

class Character
    attr_accessor :hp, :power
    
    def initialize(hp,power)
        self.hp = hp
        self.power =power
    end
    
    def name
        ''
    end
    
    def attack(character)
        character.hp -= self.power
        puts "#{self.name}が#{character.name}を攻撃して#{self.power}のダメージを与えた！"
        
        if character.hp <= 0
            self.defeat(character)
        end
    end
    
    def defeat(character)
        puts"#{self.name}は#{character.name}を倒した！"
    end
end

class Slime < Character
    @@type = 'スライム'
    
    attr_accessor :suffix
    
    def initialize(suffix)
        super(10,3)
        self.suffix = suffix
    end
    
    def name
        @@type + self.suffix
    end
    
    def self.description
        puts @@type + '最弱のモンスターだ！'
    end
end

class Hero < Character
    @@type = '勇者'

    def initialize
        super(1000,30)
    end
    
    def name
        @@type
    end
    
    def self.description
        puts @@type + 'は世界を守る勇者だ！'
    end
end

hero = Hero.new
slime_A = Slime.new('A')

slime_A.attack(hero)
hero.attack(slime_A)

Hero.description
Slime.description