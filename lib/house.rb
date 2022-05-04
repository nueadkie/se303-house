class House
  def recite
    1.upto(12).map{ |i| line(i) }.join("\n")
  end

  def line(n)
    "This is #{animals_belong_to_phrase(n)}#{farmer_kept_phrase(n)}#{rooster_woke_phrase(n)}#{priest_married_phrase(n)}#{man_kissed_phrase(n)}#{maiden_milked_phrase(n)}#{cow_tossed_phrase(n)}#{dog_worried_phrase(n)}#{cat_killed_phrase(n)}#{rat_ate_phrase(n)}#{malt_lay_phrase(n)}the house that Jack built.\n"
  end

  def house_built_phrase(n = 1)
    if n >= 1
      "the house that Jack built"
    else
      ""
    end
  end

  def malt_lay_phrase(n = 2)
    if n >= 2
      "the malt that lay in "
    else
      ""
    end
  end

  def rat_ate_phrase(n = 3)
    if n >= 3
      "the rat that ate "
    else
      ""
    end
  end

  def cat_killed_phrase(n = 4)
    if n >= 4
      "the cat that killed "
    else
      ""
    end
  end

  def dog_worried_phrase(n = 5)
    if n >= 5
      "the dog that worried "
    else
      ""
    end
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

end
