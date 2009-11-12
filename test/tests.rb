require "../lib/iota"
require "test/unit"
include Iota

class Iota_Basics < Test::Unit::TestCase
  # Using the real test_setup, we get a:
  # "dynamic constant assignment" error.
  #def test_setup
    Zero  = iota
    One   = iota
    Two   = iota
    Three = iota
  #end
  
  def test_basic
    assert_equal(0, Zero,  "First iota should be 0.")
    assert_equal(1, One,   "iota should increment.")
    assert_equal(2, Two,   "iota should increment.")
    assert_equal(3, Three, "iota should increment.")
  end
end

class Iota_Arrays < Test::Unit::TestCase
  # Using the real test_setup, we get a:
  # "dynamic constant assignment" error.
  #def test_setup
    set_iota 0
    iota %w(Cero Uno Dos Tres Quatro)
    iota %w(Cinco Seis Siete Ocho)
  #end
  
  def test_arrays
    assert_equal(0, Iota::Cero,   "First iota in an array should be 0.")
    assert_equal(1, Uno,    "iota in an array should increment.")
    assert_equal(2, Dos,    "iota in an array should increment.")
    assert_equal(3, Tres,   "iota in an array should increment.")
    assert_equal(4, Quatro, "iota in an array should increment.")
  end
  
  def test_continuation
    assert_equal(5, Cinco, "iota should continue to increment, array to array.")
    assert_equal(6, Seis, "iota should continue to increment, array to array.")
    assert_equal(7, Siete, "iota should continue to increment, array to array.")
    assert_equal(8, Ocho, "iota should continue to increment, array to array.")
  end
end

class Iota_Block < Test::Unit::TestCase
  set_iota 1
  iota(%w(KB MB GB TB)) do |x|
    1 << x*10
  end
  
  def test_block
    assert_equal(         1024, KB, "iota should increment in blocks.")
    assert_equal(      1048576, MB, "iota should increment in blocks.")
    assert_equal(   1073741824, GB, "iota should increment in blocks.")
    assert_equal(1099511627776, TB, "iota should increment in blocks.")
  end
end