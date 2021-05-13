require "./character"

class Hero < Character
    @@type = '主人公'
    
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
