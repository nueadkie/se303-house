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
    [
      "the #{nouns[0]} that #{verbs[0]}",
      "the #{nouns[1]} that #{verbs[1]}",
      "the #{nouns[2]} that #{verbs[2]}",
      "the #{nouns[3]} that #{verbs[3]}",
      "the #{nouns[4]} that #{verbs[4]}",
      "the #{nouns[5]} that #{verbs[5]}",
      "the #{nouns[6]} that #{verbs[6]}",
      "the #{nouns[7]} that #{verbs[7]}",
      "the #{nouns[8]} that #{verbs[8]}",
      "the #{nouns[9]} that #{verbs[9]}",
      "the #{nouns[10]} that #{verbs[10]}"
    ]
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
