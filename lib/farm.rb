class Farm

  def initialize(_) 
    @array = _
  end

  def verse(animal = nil)
    case animal.species
    when 'cow'  
      "Old MacDonald had a farm, E-I-E-I-O,"                  + "\n" +
      "And on that farm he had a cow, E-I-E-I-O,"             + "\n" +
      "With an moo moo here and an moo moo there,"            + "\n" +
      "Here an moo, there an moo, everywhere an moo moo,"     + "\n" +
      "Old MacDonald had a farm, E-I-E-I-O."
    when 'pig'
      "Old MacDonald had a farm, E-I-E-I-O,"                  + "\n" +
      "And on that farm he had a pig, E-I-E-I-O,"             + "\n" +
      "With an oink oink here and an oink oink there,"        + "\n" +
      "Here an oink, there an oink, everywhere an oink oink," + "\n" +
      "Old MacDonald had a farm, E-I-E-I-O."  
    end
  end

end
