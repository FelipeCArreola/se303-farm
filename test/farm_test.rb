require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/animal'
require_relative '../lib/farm'
using Article


class FarmTest < Minitest::Test
  def test_one_verse
    expected =
    %q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a cow, E-I-E-I-O,
With an moo moo here and an moo moo there,
Here an moo, there an moo, everywhere an moo moo,
Old MacDonald had a farm, E-I-E-I-O.]
    assert_equal expected, Farm.new([]).verse(Animal.all(['cow']).first)
  end

  def test_another_verse
    # skip
    expected =
    %q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a pig, E-I-E-I-O,
With an oink oink here and an oink oink there,
Here an oink, there an oink, everywhere an oink oink,
Old MacDonald had a farm, E-I-E-I-O.]
    assert_equal expected, Farm.new([]).verse(Animal.all(['pig']).first)
  end

  def test_lyrics_pig
    # skip
    expected =
    %q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a pig, E-I-E-I-O,
With an oink oink here and an oink oink there,
Here an oink, there an oink, everywhere an oink oink,
Old MacDonald had a farm, E-I-E-I-O.]
    assert_equal expected, Farm.new(Animal.all(['pig'])).lyrics
  end

  def test_pig_and_owl
    skip
    expected =
    %q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a pig, E-I-E-I-O,
With an oink oink here and an oink oink there,
Here an oink, there an oink, everywhere an oink oink,
Old MacDonald had a farm, E-I-E-I-O.

Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had an owl, E-I-E-I-O,
With a hoot hoot here and a hoot hoot there,
Here a hoot, there a hoot, everywhere a hoot hoot,
Old MacDonald had a farm, E-I-E-I-O.]
    assert_equal expected, Farm.new(Animal.all(['pig', 'owl'])).lyrics
  end

  def test_pig_and_nothing_and_duck
    skip
    expected =
    %q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a pig, E-I-E-I-O,
With an oink oink here and an oink oink there,
Here an oink, there an oink, everywhere an oink oink,
Old MacDonald had a farm, E-I-E-I-O.

Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a <silence>, E-I-E-I-O,
With a <silence> <silence> here and a <silence> <silence> there,
Here a <silence>, there a <silence>, everywhere a <silence> <silence>,
Old MacDonald had a farm, E-I-E-I-O.

Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had a duck, E-I-E-I-O,
With a quack quack here and a quack quack there,
Here a quack, there a quack, everywhere a quack quack,
Old MacDonald had a farm, E-I-E-I-O.]
    assert_equal expected, Farm.new(Animal.all(['pig', '', 'duck'])).lyrics
  end
end
