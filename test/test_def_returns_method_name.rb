require "minitest/autorun"
require "def_returns_method_name"

class TestDefReturnsMethodName < MiniTest::Unit::TestCase
  def test_def_returns_method_name
    assert_equal :foo, def foo; end
  end

  def test_def_defines_method_in_correct_place
    klass = Class.new do
      def foo
      end
    end

    assert klass.method_defined?(:foo)
  end

  def test_singleton_def_returns_method_name
    o = Object.new
    assert_equal :foo, def o.foo; end
  end

  def test_singleton_def_defines_method_in_correct_place
    klass = Class.new do
      def self.foo
      end
    end

    assert klass.respond_to?(:foo)
  end
end
