class House
  def recite
    1.upto(12).map{ |i| line(i) }.join("\n")
  end

  def line(n)
    "This is #{line_phrase(n)}.\n"
  end

  private

  def phrases
    [
      nil,
      "the house that Jack built",
      "the malt that lay in ",
      "the rat that ate ",
      "the cat that killed ",
      "the dog that worried ",
      "the cow with the crumpled horn that tossed ",
    ]
  end

  def line_phrase(n = :FIXME)
    animals_belong_to_phrase(n) +
    farmer_kept_phrase(n) +
    rooster_woke_phrase(n) +
    priest_married_phrase(n) +
    man_kissed_phrase(n) +
    maiden_milked_phrase(n) +
    n.downto(1).map{ |i| phrases[i] }.join()
  end

  def maiden_milked_phrase(n = 7)
    if n >= 7
      "the maiden all forlorn that milked "
    else
      ""
    end
  end

  def man_kissed_phrase(n = 8)
    if n >= 8
      "the man all tattered and torn that kissed "
    else
      ""
    end
  end

  def priest_married_phrase(n = 9)
    if n >= 9
      "the priest all shaven and shorn that married "
    else
      ""
    end
  end

  def rooster_woke_phrase(n = 10)
    if n >= 10
      "the rooster that crowed in the morn that woke "
    else
      ""
    end
  end

  def farmer_kept_phrase(n = 11)
    if n >= 11
      "the farmer sowing his corn that kept "
    else
      ""
    end
  end

  def animals_belong_to_phrase(n = 12)
    if n == 12
      "the horse and the hound and the horn that belonged to "
    else
      ""
    end
  end

end
