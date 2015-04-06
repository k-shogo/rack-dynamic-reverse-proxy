require 'minitest_helper'

class TestRack::Dynamic::Reverse::Proxy < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rack::Dynamic::Reverse::Proxy::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
