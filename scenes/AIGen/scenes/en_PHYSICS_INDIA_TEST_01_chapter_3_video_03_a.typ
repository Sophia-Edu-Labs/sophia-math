#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Work Done by Electric Field]
  #v(40pt)

  #only("1-")[
    - Electric field: $E = 100 "V/m"$
  ]
  #only("2-")[
    - Distance: $d = 2 "mm" = 0.002 "m"$
  ]
  #only("3-")[
    - Electron charge: $q = 1.6 × 10^(-19) "C"$
  ]

  #only("1")[
    #voiceover("Excellent work! Let's break down this problem step by step. We're given an electric field of 100 volts per meter.")
  ]
  #only("2")[
    #voiceover("The electron moves a distance of 2 millimeters, which we need to convert to meters. 2 millimeters is equal to 0.002 meters.")
  ]
  #only("3")[
    #voiceover("And we're given the electron charge, which is 1.6 times 10 to the negative 19 coulombs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Work]
  #v(40pt)

  #only("1-")[
    - Work formula: $W = F × d$
  ]
  #only("2-")[
    - Force on electron: $F = q E$
  ]
  #only("3-")[
    - Substituting: $W = q E d$
  ]

  #only("1")[
    #voiceover("Now, let's recall the formula for work. Work is equal to force times distance.")
  ]
  #only("2")[
    #voiceover("In an electric field, the force on a charged particle is given by the particle's charge times the electric field strength.")
  ]
  #only("3")[
    #voiceover("Substituting this into our work formula, we get that work is equal to charge times electric field strength times distance.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Plugging in Values]
  #v(40pt)

  #only("1-")[
    $W = q E d$
  ]
  #only("2-")[
    $W = (1.6 × 10^(-19) "C") × (100 "V/m") × (0.002 "m")$
  ]
  #only("3-")[
    $W = 3.2 × 10^(-20) "J"$
  ]

  #only("1")[
    #voiceover("Let's plug in our values into the equation.")
  ]
  #only("2")[
    #voiceover("We have 1.6 times 10 to the negative 19 coulombs for the charge, 100 volts per meter for the electric field, and 0.002 meters for the distance.")
  ]
  #only("3")[
    #voiceover("Calculating this gives us 3.2 times 10 to the negative 20 joules.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    Work done on electron:
    #text(size: 24pt, weight: "bold")[$3.2 × 10^(-20) "J"$]
  ]
  #only("2-")[
    #text(size: 24pt)[
      That's 0.000000000000000000032 joules! 🔬⚡
    ]
  ]

  #only("1")[
    #voiceover("So, the work done on the electron is 3.2 times 10 to the negative 20 joules.")
  ]
  #only("2")[
    #voiceover("To put this into perspective, that's an incredibly tiny amount of energy! It's 0.000000000000000000032 joules. This shows how small the scales are when we're dealing with individual subatomic particles like electrons.")
  ]
]