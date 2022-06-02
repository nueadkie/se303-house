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

  def built_phrases
    [
      "the #{nouns[0]} that lay in",
      "the rat that ate",
      "the cat that killed",
      "the dog that worried",
      "the cow with the crumpled horn that tossed",
      "the maiden all forlorn that milked",
      "the man all tattered and torn that kissed",
      "the priest all shaven and shorn that married",
      "the rooster that crowed in the morn that woke",
      "the farmer sowing his corn that kept",
      "the horse and the hound and the horn that belonged to"
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
