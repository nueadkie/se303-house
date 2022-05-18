class House
  def recite
    1.upto(12).map{ |i| line(i) }.join("\n")
  end

  def line(n)
    "This is #{line_phrase(n)}.\n"
  end

  private

  def line_opener
  end

  def phrases
    [
      nil,
      "the house that Jack built",
      "the malt that lay in",
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

  def line_phrase(n)
    n.downto(1).map{ |i| phrases[i] }.join(" ")
  end

end
