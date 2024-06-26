#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Free Electron Charge Calculation]
  #v(40pt)

  #only("1-")[
    - Volume: 3 mm³
    - Electron density: 500 electrons/mm³
    - Charge of 1 million electrons: 1.6 × 10⁻⁴ C
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: Total charge of free electrons? 🤔]
  ]

  #only("1")[
    #voiceover("Excellent work on solving this problem! Let's walk through the solution step-by-step. We're given a conductor with a volume of 3 cubic millimeters, containing 500 free electrons per cubic millimeter. We also know that 1 million electrons carry a charge of 1.6 times 10 to the negative 4 Coulombs.")
  ]

  #only("2")[
    #voiceover("Our task is to calculate the total charge of all the free electrons in this 3 cubic millimeter volume. Let's break it down.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Total Number of Electrons]
  #v(40pt)

  #only("1-")[
    - Volume: 3 mm³
    - Electron density: 500 electrons/mm³
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Total electrons = Volume × Density]
  ]

  #only("3-")[
    $"Total electrons" = 3 "mm"^3 × 500 "electrons/mm"^3 = 1500 "electrons"$
  ]

  #only("1")[
    #voiceover("First, let's calculate the total number of electrons in our sample. We have a volume of 3 cubic millimeters, and each cubic millimeter contains 500 electrons.")
  ]

  #only("2")[
    #voiceover("To find the total number of electrons, we multiply the volume by the electron density.")
  ]

  #only("3")[
    #voiceover("This gives us 3 times 500, which equals 1500 electrons in total.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Charge Conversion]
  #v(40pt)

  #only("1-")[
    - Charge of 1 million electrons: 1.6 × 10⁻⁴ C
    - We have 1500 electrons
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Conversion factor:]
  ]

  #only("3-")[
    $(1.6 × 10^(-4) "C") / (10^6 "electrons") = 1.6 × 10^(-10) "C/electron"$
  ]

  #only("1")[
    #voiceover("Now, we need to convert the number of electrons to charge. We're given that 1 million electrons carry a charge of 1.6 times 10 to the negative 4 Coulombs.")
  ]

  #only("2")[
    #voiceover("Let's calculate the charge per electron.")
  ]

  #only("3")[
    #voiceover("Dividing 1.6 times 10 to the negative 4 Coulombs by 1 million electrons, we get 1.6 times 10 to the negative 10 Coulombs per electron.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Total Charge Calculation]
  #v(40pt)

  #only("1-")[
    - Total electrons: 1500
    - Charge per electron: 1.6 × 10⁻¹⁰ C/electron
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Total charge = Number of electrons × Charge per electron]
  ]

  #only("3-")[
    $"Total charge" = 1500 "electrons" × (1.6 × 10^(-10) "C/electron")$
  ]

  #only("4-")[
    $"Total charge" = 2.4 × 10^(-7) "C"$
  ]

  #only("1")[
    #voiceover("Finally, let's calculate the total charge. We have 1500 electrons, and each electron carries a charge of 1.6 times 10 to the negative 10 Coulombs.")
  ]

  #only("2")[
    #voiceover("To find the total charge, we multiply the number of electrons by the charge per electron.")
  ]

  #only("3")[
    #voiceover("So, we multiply 1500 by 1.6 times 10 to the negative 10.")
  ]

  #only("4")[
    #voiceover("This gives us a total charge of 2.4 times 10 to the negative 7 Coulombs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt, weight: "bold")[The total charge of free electrons in 3 mm³ of the conductor is:]
  ]

  #only("2-")[
    #text(size: 28pt, fill: blue)[2.4 × 10⁻⁷ C]
  ]

  #only("3-")[
    - This is equivalent to 240 nanocoulombs (nC)
    - Or 0.24 microcoulombs (µC)
  ]

  #only("1")[
    #voiceover("So, our final answer is:")
  ]

  #only("2")[
    #voiceover("The total charge of free electrons in 3 cubic millimeters of the conductor is 2.4 times 10 to the negative 7 Coulombs.")
  ]

  #only("3")[
    #voiceover("To put this in perspective, this is equivalent to 240 nanocoulombs or 0.24 microcoulombs. Great job on solving this problem!")
  ]
]