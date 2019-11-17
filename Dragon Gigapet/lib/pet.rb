require 'energy'
require 'affection'
require 'fun'
require 'hunger'
require 'strength'
 
class Pet

    def initialize
        @energy = Energy.new
        @affection = Affection.new
        @fun = Fun.new
        @hunger = Hunger.new
        @strength = Strength.new
    end

def energy
    @energy.status_energy
    #energy.value_energy
end

def energy_adjustments
    @energy.adjustments_energy
end

def affection
    @affection.status_energy
    #affection.value_energy
end

def affection_adjustments
    @affection.adjustments_energy
end

def fun
    @fun.status_energy
    #fun.value_energy
end

def fun_adjustments
    @fun.adjustments_energy
end

def hunger
    @hunger.status_energy
    #hunger.value_energy
end

def hunger_adjustments
    @hunger.adjustments_energy
end

def strength
    @strength.status_energy
    #strength.value_energy
end

def strength_adjustments
    @strength.adjustments_energy
end

def energy_step
    @affection.step_affection
    @fun.step_fun
end

def affection_step
    @fun.step_fun
    @hunger.step_hunger
end

def fun_step
    @hunger.step_hunger
    @strength.step_strength
end

def hunger_step
    @strength.step_strength
    @energy.step_energy
end

def strength_step
    @energy.step_energy
    @affection.step_affection
end

def step
    @energy.step_energy
    @affection.affection
    @fun.step_fun
    @hunger.step_hunger
    @strength.step_strength
end
end
