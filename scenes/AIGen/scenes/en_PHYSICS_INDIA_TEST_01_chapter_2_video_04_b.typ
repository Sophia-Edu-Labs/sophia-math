#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Free Electron Charge in a Conductor]
  #v(40pt)

  #only("1-")[
    - Given: 3 cm³ of conductor
  ]
  #v(20pt)
  #only("2-")[
    - Electron density: 8 × 10²¹ electrons/cm³
  ]
  #v(20pt)
  #only("3-")[
    - Charge of one electron: -1.6 × 10⁻¹⁹ C
  ]

  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step by step. We're dealing with a conductor that has a volume of 3 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("The conductor has a free electron density of 8 times 10 to the power of 21 electrons per cubic centimeter.")
  ]
  #only("3")[
    #voiceover("We also know that each electron carries a charge of negative 1.6 times 10 to the power of negative 19 coulombs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculation Steps]
  #v(40pt)

  #only("1-")[
    1. Calculate total number of electrons
  ]
  #v(20pt)
  #only("2-")[
    2. Determine total charge
  ]

  #only("1")[
    #voiceover("To solve this problem, we'll follow two main steps. First, we'll calculate the total number of free electrons in our 3 cubic centimeter sample.")
  ]
  #only("2")[
    #voiceover("Then, we'll determine the total charge by multiplying the number of electrons by the charge per electron.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Total Number of Electrons]
  #v(40pt)

  #only("1-")[
    $"Number of electrons" = "Volume" times "Electron density"$
  ]
  #v(20pt)
  #only("2-")[
    $= 3 "cm"^3 times 8 times 10^21 "electrons/cm"^3$
  ]
  #v(20pt)
  #only("3-")[
    $= 24 times 10^21 "electrons"$
  ]

  #only("1")[
    #voiceover("Let's start with step one. To find the total number of electrons, we multiply the volume by the electron density.")
  ]
  #only("2")[
    #voiceover("That's 3 cubic centimeters times 8 times 10 to the power of 21 electrons per cubic centimeter.")
  ]
  #only("3")[
    #voiceover("This gives us 24 times 10 to the power of 21 electrons in total.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Total Charge]
  #v(40pt)

  #only("1-")[
    $"Total charge" = "Number of electrons" times "Charge per electron"$
  ]
  #v(20pt)
  #only("2-")[
    $= 24 times 10^21 times (-1.6 times 10^(-19) "C")$
  ]
  #v(20pt)
  #only("3-")[
    $= -3.84 times 10^3 "C"$
  ]

  #only("1")[
    #voiceover("Now for step two. To find the total charge, we multiply the number of electrons by the charge per electron.")
  ]
  #only("2")[
    #voiceover("That's 24 times 10 to the power of 21, times negative 1.6 times 10 to the power of negative 19 coulombs.")
  ]
  #only("3")[
    #voiceover("This gives us a total charge of negative 3.84 times 10 to the power of 3 coulombs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    The total charge of free electrons in 3 cm³ of the conductor is:
  ]
  #v(20pt)
  #only("2-")[
    $-3.84 times 10^3 "C" = -3,840 "C"$
  ]

  #only("1")[
    #voiceover("So, our final answer for the total charge of free electrons in 3 cubic centimeters of this conductor is")
  ]
  #only("2")[
    #voiceover("negative 3.84 times 10 to the power of 3 coulombs, or negative 3,840 coulombs. That's quite a large charge! This demonstrates the immense number of free electrons present in conductors, which is what allows them to conduct electricity so well.")
  ]
]