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
