class Character
    attr_accessor :hp,:power
    
    def initialize(hp,power)
        self.hp = hp
        self.power = power
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
        puts "#{self.name}が#{character.name}を倒した！"
    end
end
