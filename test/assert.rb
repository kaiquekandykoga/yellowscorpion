require_relative "../lib/yellowscorpion"

class TestAssert
  include Yellowscorpion::Assert

  ARGS = %w!true false!

  def test_0
    ARGS.each {
      yield _1
      assert Kernel.eval(_1)
      puts
    }
  end
end

TestAssert.new.test_0 {
  printf "assert(#{_1}) \t=> "
}

  # Assertion failed: method test_0, file test/assert.rb, line 11.
  # ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-freebsd13.1]
