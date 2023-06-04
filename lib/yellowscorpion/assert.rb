module Yellowscorpion
  module Assert
    def assert(expression)
      return if expression == true

      backlocation = caller_locations(1, 1)[0]
      lineno = backlocation.lineno
      method_name = backlocation.to_s[/`.*'/][1..-2].split(" ")[-1]
      filename = backlocation.to_s.split(":")[0]
      message = "Assertion failed: method #{method_name}, file #{filename}, line #{lineno}."
      printf "\e[31m#{message}\e[0m \n"
      abort
    end
  end
end

