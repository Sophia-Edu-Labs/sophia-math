#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Balloon Liftoff 🎈]
  #v(40pt)
  #only("1-")[- Minimum volume for liftoff?]
  #only("2-")[- Given: 
    - Location: Uster (464 m above sea level)
    - Neglect volume of gondola and passengers
  ]
  #only("1")[
    #voiceover("Great job! That's the correct minimum volume for the balloon to lift off in Uster. Now, let's see how we can calculate this step by step.")
  ]
  #only("2")[
    #voiceover("To find the minimum volume, we need to consider the location, which is Uster at 464 meters above sea level. We can also neglect the volume of the gondola and passengers for this calculation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Buoyancy Condition]
  #v(40pt)
  #only("1-")[For liftoff: $F_("buoyancy") > F_("gravity")$]
  #v(20pt)
  #only("2-")[$(rho_("air") - rho_("heated gas")) dot g dot V > m_("balloon") dot g$]
  #only("1")[
    #voiceover("First, for the balloon to lift off, the buoyancy force must be greater than the force of gravity on the balloon.")
  ]
  #only("2")[
    #voiceover("We can express this mathematically as the density difference between air and the heated gas in the balloon, multiplied by the acceleration due to gravity and the volume, being greater than the mass of the balloon multiplied by the acceleration due to gravity.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Solve for Volume]
  #v(40pt)
  #only("1-")[$(rho_("air") - rho_("heated gas")) dot V > m_("balloon")$]
  #v(20pt)
  #only("2-")[$V > (m_("balloon"))/(rho_("air") - rho_("heated gas"))$]
  #only("1")[
    #voiceover("We can simplify this by dividing both sides by the acceleration due to gravity.")
  ]
  #only("2")[
    #voiceover("Now, to find the minimum volume, we solve the inequality for V. The minimum volume must be greater than the mass of the balloon divided by the density difference between air and the heated gas.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate Density of Air]
  #v(40pt)
  #only("1-")[- Density of air depends on altitude]
  #v(20pt)
  #only("2-")[- At sea level (0 m): $rho_("air, 0") = 1.225 "kg"/m^3$]
  #v(20pt)
  #only("3-")[- At altitude $h$: $rho_("air, h") = rho_("air, 0") dot e^(-0.00012 dot h)$]
  #v(20pt)
  #only("4-")[- For Uster (464 m): $rho_("air, Uster") = 1.225 "kg"/m^3 dot e^(-0.00012 dot 464) = 1.17 "kg"/m^3$]
  #only("1")[
    #voiceover("To proceed, we need to know the density of air. This depends on the altitude.")
  ]
  #only("2")[
    #voiceover("At sea level, or 0 meters altitude, the density of air is approximately 1.225 kilograms per cubic meter.")
  ]
  #only("3")[
    #voiceover("For any altitude h, the density of air can be calculated using this exponential formula, where rho air 0 is the density at sea level, e is the mathematical constant, and the exponent is negative 0.00012 times the altitude h.")
  ]
  #only("4")[
    #voiceover("Plugging in the altitude of Uster, which is 464 meters, we get a density of approximately 1.17 kilograms per cubic meter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Minimum Volume]
  #v(40pt)
  #only("1-")[- Mass of balloon: $m_("balloon") = 800 "kg"$]
  #v(20pt)
  #only("2-")[- Density of heated gas: $rho_("heated gas") = 0.17 "kg"/m^3$]
  #v(20pt)
  #only("3-")[$V > (800 "kg")/(1.17 "kg"/m^3 - 0.17 "kg"/m^3)$]
  #v(20pt)
  #only("4-")[$V > 800 m^3$]
  #only("1")[
    #voiceover("Now, let's say the mass of the balloon is 800 kilograms.")
  ]
  #only("2")[
    #voiceover("And the density of the heated gas inside the balloon is 0.17 kilograms per cubic meter.")
  ]
  #only("3")[
    #voiceover("We can now substitute these values into our inequality. The minimum volume must be greater than 800 kilograms divided by the difference between the density of air in Uster and the density of the heated gas.")
  ]
  #only("4")[
    #voiceover("Calculating this, we find that the minimum volume for the balloon to lift off in Uster must be greater than 800 cubic meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[- Minimum volume for liftoff in Uster: $V > 800 m^3$ 📏]
  #v(20pt)
  #only("2-")[Key factors:
    - Density of air decreases with altitude 🌬️
    - Buoyancy force must exceed gravity force 🪁
  ]
  #only("1")[
    #voiceover("In conclusion, for the balloon to lift off in Uster, which is at an altitude of 464 meters, its volume must be greater than 800 cubic meters, assuming we neglect the volume of the gondola and passengers.")
  ]
  #only("2")[
    #voiceover("The key factors in this calculation were the decrease in air density with altitude, and the requirement that the buoyancy force must exceed the force of gravity for liftoff to occur.")
  ]
]