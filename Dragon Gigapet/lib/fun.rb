class Fun

    attr_reader = :value_fun

    MAX_FUN = 100
    HIGH_FUN= 85
    GOOD_FUN = 70
    MEDIUM_FUN= 50
    FARE_FUN= 30
    LOW_FUN= 15
    IME_STEP_FUN = -10
    TIME_INCREASE_FUN= -15

    def initialize
        @value_fun= rand(LOW_FUN..MAX_FUN)
    end

    def status_fun
        case @value_fun
        when 0..LOW_FUN
        "Falling asleep."
        when LOW_FUN..FARE_FUN
        "Very tired."
        when FARE_FUN..MEDIUM_FUN
        "Somewhat lively."
        when MEDIUM_FUN..GOOD_FUN
        "Still upbeat and happy"
        when GOOD_FUN..HIGH_FUN
        "Very excited."
        when HIGH_FUN..MAX_FUN
        "Riddled with excitment!"
    
    def step_fun
        @value_fun += TIME_STEP_FUN
        if value_fun > 0
            @value_fun = 0
        end
        if value_fun == 0
            puts "Pet lost interest in you."
            puts "Endgame"
            exit!
    end
    def adjustments_fun
        if @input = "Play"
            @value_fun -= TIME_INCREASE_FUN
          end
          if @value_fun > 100
            @value_fun=  100
          end
        end
      
      end