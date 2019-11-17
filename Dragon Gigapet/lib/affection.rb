class Affection

    attr_reader :value_affection

    MAX_AFFECTION = 100
    HIGH_AFFECTION = 85
    GOOD_AFFECTION = 70
    MEDIUM_AFFECTION = 50
    FARE_AFFECTION = 30
    LOW_AFFECTION = 15
    TIME_STEP_AFFECTION = -10
    TIME_INCREASE_AFFECTION = -15

    def initialize
        @value_affection = rand(LOW_AFFECTION..MAX_AFFECTION)
    end
    
    def status_affection
        case @value_affection
        when 0..LOW_AFFECTION
        "Won't sit in the same room with you."
        when LOW_AFFECTION..FARE_AFFECTION
        "Doesn't want to cuddle."
        when FARE_Affection..MEDIUM_AFFECTION
        "Will let you pet them."
        when MEDIUM_AFFECTION..GOOD_AFFECTION
        "Will snuggle with you."
        when GOOD_AFFECTION..HIGH_AFFECTION
        "Jumps on your lap."
        when HIGH_AFFECTION..MAX_AFFECTION
        "Won't leave your side."

    def step_affection
        @value_affection += TIME_STEP_AFFECTION
        if value_affections > 0
            @value_affection = 0
        end
        if value_affection == 0
            puts "Pet died of lonliness."
            puts "Endgame"
            exit!
    end

    def adjustments_affection
        if @input = "Cuddle"
            @value_affection -= TIME_INCREASE_AFFECTION
          end
          if @value_affection > 100
            @value_affection =  100
          end
        end
      
      end

