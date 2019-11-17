class Hunger

    attr_reader = :hunger_affection

    MAX_HUNGER = 100
    HIGH_HUNGER = 85
    GOOD_HUNGER = 70
    MEDIUM_HUNGER = 50
    FARE_HUNGER = 30
    LOW_HUNGER = 15
    TIME_STEP_HUNGER = -10
    TIME_INCREASE_HUNGER = -15

    def initialize
        @value_hunger = rand(LOW_HUNGER..MAX_HUNGER)
    end

    def status_hunger
        case @value_hunger
        when 0..LOW_HUNGER
        "Not hungry at all."
        when LOW_HUNGER..FARE_HUNGER
        "Not very hungry."
        when FARE_HUNGER..MEDIUM HUNGER
        "Can eat but can also wait for later."
        when MEDIUM_HUNGER..GOOD_HUNGER
        "Would love some yummy good."
        when GOOD_HUNGER..HIGH_HUNGER
        "Very hungry."
        when HIGH_HUNGER..MAX_HUNGER
        "Absolutely ravished."
    
    def step_hunger
        @value_hunger += TIME_STEP_HUNGER
        if value_hunger > 0
            @value_hunger = 0
        end
        if value_hunger== 0
            puts "Pet starved"
            puts "Endgame"
            exit!
    end
    def adjustments_hunger
        if @input = "Eat"
            @value_hunger -= TIME_INCREASE_HUNGER
          end
          if @value_hunger > 100
            @value_hunger =  100
          end
        end
      
      end