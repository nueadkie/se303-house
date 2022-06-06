gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class HouseTest < Minitest::Test

  def setup
    srand(1)
  end

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new.recite
  end

  def test_pirate_line_1
    expected = "Thar be the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(1)
  end

  def test_pirate_line_2
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(2)
  end

  def test_pirate_line_3
    expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(3)
  end

  def test_pirate_line_4
    expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(4)
  end

  def test_pirate_line_5
    expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(5)
  end

  def test_pirate_line_6
    expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(6)
  end

  def test_pirate_line_7
    expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(7)
  end

  def test_pirate_line_8
    expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(8)
  end

  def test_pirate_line_9
    expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(9)
  end

  def test_pirate_line_10
    expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(10)
  end

  def test_pirate_line_11
    expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(11)
  end

  def test_pirate_line_12
    expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(line_opener: "Thar be").line(12)
  end

  def test_all_the_pirate_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new(line_opener: "Thar be").recite
  end

  def test_shuffled_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(1)
  end

  def test_shuffled_line_2
    expected = "This is the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(2)
  end

  def test_shuffled_line_3
    expected = "This is the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(3)
  end

  def test_shuffled_line_4
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(4)
  end

  def test_shuffled_line_5
    expected = "This is the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(5)
  end

  def test_shuffled_line_6
    expected = "This is the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(6)
  end

  def test_shuffled_line_7
    expected = "This is the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(7)
  end

  def test_shuffled_line_8
    expected = "This is the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(8)
  end

  def test_shuffled_line_9
    expected = "This is the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(9)
  end

  def test_shuffled_line_10
    expected = "This is the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(10)
  end

  def test_shuffled_line_11
    expected = "This is the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(11)
  end

  def test_shuffled_line_12
    expected = "This is the maiden all forlorn that milked the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.\n"
    assert_equal expected, ShuffledHouse.new(seed: 1).line(12)
  end

  def test_all_the_shuffled_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the cat that killed the house that Jack built.

This is the dog that worried the cat that killed the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

This is the maiden all forlorn that milked the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.
    TEXT
    assert_equal expected, ShuffledHouse.new(seed: 1).recite
  end

  def test_all_the_shuffled_pirate_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the cat that killed the house that Jack built.

Thar be the dog that worried the cat that killed the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.

Thar be the maiden all forlorn that milked the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the malt that lay in the man all tattered and torn that kissed the rat that ate the farmer sowing his corn that kept the cow with the crumpled horn that tossed the dog that worried the cat that killed the house that Jack built.
    TEXT
    assert_equal expected, ShuffledHouse.new(line_opener: "Thar be", seed: 1).recite
  end

  # The seed is the same as above and the noun shuffler uses the seed 
  # directly, while the verb shuffler uses the seed's successor - 
  # effectively, the nouns are the same as the shuffled phrases above, but 
  # the verbs are randomized differently.
  def test_all_the_random_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the cat that tossed the house that Jack built.

This is the dog that ate the cat that tossed the house that Jack built.

This is the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the malt that killed the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the priest all shaven and shorn that worried the malt that killed the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the horse and the hound and the horn that kissed the priest all shaven and shorn that worried the malt that killed the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the rooster that crowed in the morn that belonged to the horse and the hound and the horn that kissed the priest all shaven and shorn that worried the malt that killed the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.

This is the maiden all forlorn that woke the rooster that crowed in the morn that belonged to the horse and the hound and the horn that kissed the priest all shaven and shorn that worried the malt that killed the man all tattered and torn that married the rat that lay in the farmer sowing his corn that milked the cow with the crumpled horn that kept the dog that ate the cat that tossed the house that Jack built.
    TEXT
    assert_equal expected, RandomizedHouse.new(seed: 1).recite
  end

end
