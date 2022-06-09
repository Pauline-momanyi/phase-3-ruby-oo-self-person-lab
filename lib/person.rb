# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness 
        @hygiene = hygiene
    end

    def happiness=(val)
        @happiness = if val>10
            10
        elsif val<0
            0
        else 
            val
        end
    end

    def hygiene=(val)
        @hygiene = if val>10
            10
        elsif val<0
            0
        else 
            val
        end
    end

    def clean? 
        hygiene > 7? true:false
    end

    def happy? 
        happiness > 7? true:false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end  

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end  

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end  

    def call_friend(friend)
    #    self.happiness += 3
    #     friend.happiness += 3 
    [self, friend].each { |person| person.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
        friend.happiness -= 2
            # [self, friend].each { |person| person.happiness -= 2 }
            "blah blah partisan blah lobbyist"
        when "weather"   
            [self, friend].each { |person| person.happiness += 1 }            
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end  
     
end

# popo = Person.new('popo')
# popo.hygiene = 20
# puts popo.hygiene
# puts popo.get_paid(10).bank
# puts popo.bank_account
