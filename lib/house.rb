class House
  attr_reader :line_opener, :seed

  def initialize(line_opener: "This is", seed: Random.new_seed)
    @line_opener = line_opener
    @seed = seed
  end
  
  def recite
    1.upto(12).map{ |i| line(i) }.join("\n")
  end

  def line(n)
    "#{line_opener} #{line_phrase(n)}.\n"
  end

  private

  def nouns
    [
      "malt",    
      "rat",  
      "cat",
      "dog",
      "cow with the crumpled horn",
      "maiden all forlorn",
      "man all tattered and torn",
      "priest all shaven and shorn",
      "rooster that crowed in the morn",
      "farmer sowing his corn",
      "horse and the hound and the horn"
    ]
  end

  def verbs
    [
      "lay in",
      "ate",
      "killed",
      "worried",
      "tossed",
      "milked",
      "kissed",
      "married",
      "woke",
      "kept",
      "belonged to"
    ]
  end

  def built_phrases
    nouns.zip(verbs).map{ |noun, verb| "the #{noun} that #{verb}" }
  end

  def phrases
    built_phrases.prepend("the house that Jack built")
  end

  def line_phrase(n)
    phrases.first(n).reverse.join(" ")
  end

end

class ShuffledHouse < House
  def built_phrases
    super.shuffle(random: Random.new(seed))
  end
end

class RandomizedHouse < House
  def nouns
    super.shuffle(random: Random.new(seed))
  end
end
