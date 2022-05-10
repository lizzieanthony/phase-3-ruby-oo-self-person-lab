# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account

    def initialize(provided_name)
        @name =(provided_name)
        self.bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness 
        @happiness
    end

    def happiness=(provided_points)
        if provided_points <= 10 && provided_points >= 0
            @happiness = provided_points
        elsif provided_points > 10
            @happiness = 10
        else
          @happiness = 0
        end   
      end
   
    def hygiene
        @hygiene    
    end

    def hygiene=(provided_points)
        if provided_points <= 10 && provided_points >= 0
            @hygiene = provided_points
        elsif provided_points > 10
            @hygiene = 10
        else
          @hygiene = 0
        end  
      end

    def happy?
        @happiness > 7 ? true : false
      end
      
    def clean?
        @hygiene > 7 ? true : false
      end

    def get_paid(provided_amount)
        self.bank_account += provided_amount
        "all about the benjamins"
      end

      def take_bath 
        self.hygiene = (self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
      
      def work_out
        self.hygiene = (self.hygiene - 3)
        self.happiness = (self.happiness + 2)
        "♪ another one bites the dust ♫"
      end

      def call_friend(friend)
        self.happiness = (self.happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (self.happiness - 2)
            friend.happiness = (friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (self.happiness + 1)
            friend.happiness = (friend.happiness + 1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
      end
end

