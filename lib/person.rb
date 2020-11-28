# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene, :get_paid
    attr_reader :name
    attr_writer 
    def initialize(name)
        @name = name
        #@happiness.clamp(0, 10)
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

# def limit(x)
#     if x > 10
#       return 10
#     elsif x < 0
#       return 0
#     else
#       x
#     end
# end

    def happiness
        if @happiness > 10
            return 10
        elsif @happiness < 0
            return 0
        else
            @happiness
        end
    end


    def hygiene
        if @hygiene > 10
            return 10
        elsif @hygiene < 0
            return 0
        else
            @hygiene
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end

    def clean?
            if @hygiene > 7
                return true
            else
                false
            end
    end

    def get_paid(salary = 0)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

def start_conversation(friend, topic)
    # start_conversation.each do |friend, topic|
    if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
    "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"

    end
end
end