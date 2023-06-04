module Yellowscorpion
  module Assert
    def assert(expression)
      return if expression == true

      backlocation = caller_locations(1, 1)[0].to_s
      printf "\e[31m#{backlocation}\e[0m \n"
      abort
    end
  end
end

