# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account


    def initialize(provided_name)
        @name = provided_name
        self.bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness
    end

    def happiness=(provided_value)
        if provided_value <= 10 && provided_value >= 0
            @happiness = provided_value
        elsif provided_value > 10
            @happiness = 10
        else
            @happiness = 0
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(provided_value)
        if provided_value <= 10 && provided_value >= 0
            @hygiene = provided_value
        elsif provided_value > 10
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
        current_hygiene_points = @hygiene += 4
        self.hygiene=(current_hygiene_points)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        current_hygiene_points = @hygiene -= 3
        self.hygiene=(current_hygiene_points)
        current_happiness_points = @happiness += 2
        self.happiness=(current_happiness_points)
        "♪ another one bites the dust ♫"
    end

    def call_friend(another_instance_of_person)
        this_instances_happiness = self.happiness + 3
        a_friend_instances_happiness = another_instance_of_person.happiness + 3

        self.happiness=(this_instances_happiness)
        another_instance_of_person.happiness=(a_friend_instances_happiness)

        "Hi #{another_instance_of_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend_instance, given_topic)
        case given_topic
        
        when "politics"
            current_instance_happiness = self.happiness - 2
            friend_instance_happiness = friend_instance.happiness - 2
            self.happiness=(current_instance_happiness)
            friend_instance.happiness=(friend_instance_happiness)
            "blah blah partisan blah lobbyist"

        when "weather"
            current_instance_happiness = self.happiness + 1
            friend_instance_happiness = friend_instance.happiness + 1
            self.happiness=(current_instance_happiness)
            friend_instance.happiness=(friend_instance_happiness)
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end

    end

end