module SitesHelper

  def random_bee_fact

    @beefacts = [
      
      "A honeybee can fly 24 km in an hour, at a speed of 15 mph.",
      "The flower where the nectar was gathered from determines the flavour and colour of the honey.",
      "A single beehive can make more than 100 pounds of extra honey.",
      "A honeybee can beat its wings 200 times per second, or 12,000 beats per minute.",
      "Each honeybee colony has a unique odor they use to recognize hivemates.",
      "Honey speeds the healing of wounds and combats infections.",
      "Apis Millfera, the most common domesticated honey bee - was the third insect to have its genome mapped."
    ]

    @beefacts.sample

  end

end
