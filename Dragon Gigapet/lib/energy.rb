class Energy

    attr_reader :value_energy

    MAX_ENERGY = 100
    HIGH_ENERGY = 85
    GOOD_ENERGY = 70
    MEDIUM_ENERGY = 50
    FARE_ENERGY = 30
    LOW_ENERGY = 15
    IME_STEP_ENERGY = -10
    TIME_INCREASE_ENERGY= -15

    def initialize
        @value_energy = rand(LOW_ENERGY..MAX_ENERGY)
    end

    def status_energy
        case @value_energy
        when 0..LOW_ENERGY
        "Falling asleep."
        when LOW_ENERGY..FARE_ENERGY
        "Very tired."
        when FARE_ENERGY..MEDIUM_ENERGY
        "Somewhat lively."
        when MEDIUM_ENERGY..GOOD_ENERGY
        "Still upbeat and happy"
        when GOOD_ENERGY..HIGH_ENERGY
        "Very excited."
        when HIGH_ENERGY..MAX_ENERGY
        "Riddled with excitment!"
    
    def step_energy
        @value_energy += TIME_STEP_ENERGY
        if value_energy > 0
            @value_energy = 0
        end
        if value_energy == 0
            puts "Pet went to sleep"
            puts "Endgame"
            exit!
    end
    def adjustments_energy
        if @input = "Sleep"
            @value_affection -= TIME_INCREASE_AFFECTION
          end
          if @value_affection > 100
            @value_affection =  100
          end
        end
      
      end


