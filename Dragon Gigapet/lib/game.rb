require 'pet'

class game
    def start
        @dragon = Pet.new
        main
    end

   def display
     system 'clear'
     puts "-------------------"
     puts "  Dragon Gigapet "
     puts "-------------------"
     puts "Energy: #{pet.energy}"
     puts "Affection: #{pet.affection}"
     puts "Fun: #{pet.fun}"
     puts "Hunger: #{pet.hunger}"
     puts "Strength: #{pet.strength}"
     
     def main
        #15.times do
        loop do
            display
            get_input
            adjustments
        end
    end
     
     def get_input
        puts "Fight, Play, Cuddle, Eat, Sleep, or Quit"
        print "> "
        @input = gets.capitalize.chomp
        if @input == "Quit"
          exit!
        end
      end
    
      def adjustments
        if @input == "Fight"
          @dragon.strenth_adjustments
          @dragon.strength_step
        elsif @input == "Play"
          @dragon.fun_adjustments
          @dragon.fun_step
        elsif @input == "Cuddle"
          @dragon.affection_adjustments
          @dragon.affection_step
        elsif @input == "Eat"
          @dragon.hunger_adjustments
          @dragon.hunger_step
        elsif @input == "Sleep"
          @dragon.energy_adjustments
          @dragon.energy_step
        else
          @dragon.step
        end
      end
    end


