require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_points)
        if happiness_points > 10
            @happiness = 10
        elsif happiness_points < 0
            @happiness = 0
        else
            @happiness = happiness_points
        end
    end

    def hygiene=(hygiene_points)
        if hygiene_points > 10
            @hygiene = 10
        elsif hygiene_points < 0
            @hygiene = 0
        else
            @hygiene = hygiene_points
        end
    end

    def happy?
        if
            self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if
            self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene += -3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end