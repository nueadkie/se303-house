class House
  def recite
    1.upto(12).map{ |i| line(i) }.join("\n")
  end

  def cow_tossed_phrase(n = 6)
    if n >= 6
      "the cow with the crumpled horn that tossed "
    else
      ""
    end
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

  def line(n)
    case n
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    when 3
      "This is the rat that ate the malt that lay in the house that Jack built.\n"
    when 4
      "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 5
      "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      "This is #{animals_belong_to_phrase(n)}#{farmer_kept_phrase(n)}#{rooster_woke_phrase(n)}#{priest_married_phrase(n)}#{man_kissed_phrase(n)}#{maiden_milked_phrase(n)}#{cow_tossed_phrase(n)}the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
  end
end
