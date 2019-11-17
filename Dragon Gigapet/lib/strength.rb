class Strength

    attr_reader = :energy_strength

    MAX_STRENGTH = 100
    HIGH_STRENGTH = 85
    GOOD_STRENGTH = 70
    MEDIUM_STRENGTH= 50
    FARE_STRENGTH = 30
    LOW_STRENGTH = 15
    IME_STEP_STRENGTH = -10
    TIME_INCREASE_STRENGTH = -15

    def initialize
        @value_strength = rand(LOW_STRENGTH..MAX_STRENGTH)
    end

    def status_strength
        case @value_strength
        when 0..LOW_STRENGTH
        "Losing the fight."
        when LOW_STRENGTH..FARE_STRENGTH
        "Losing strength."
        when FARE_STRENGTH..MEDIUM_STRENGTH
        "Pretty even, needs more strength."
        when MEDIUM_STRENGTH..GOOD_STRENGTH
        "Leading the fight."
        when GOOD_STRENGTH..HIGH_STRENGTH
        "Throwing hard punches."
        when HIGH_STRENGTH..MAX_STRENGTH
        "Winning the fight."
    
    def step_strength
        @value_strength += TIME_STEP_STRENGTH
        if value_strength > 0
            @value_strength = 0
        end
        if value_strength == 0
            puts "Pet lost the fight"
            puts "Endgame"
            exit!
    end
    def adjustments_strength
        if @input = "Sleep"
            @value_strength -= TIME_INCREASE_STRENGTH
          end
          if @value_strength > 100
            @value_strength =  100
          end
        end
      
      end