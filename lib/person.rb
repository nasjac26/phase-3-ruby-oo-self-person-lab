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

end