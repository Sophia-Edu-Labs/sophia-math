#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electron Motion in Electric Field]
  #v(40pt)

  #only("1-")[
    - Electric field: 5 V/m
    - Work done: 4 × 10^(-4) J
    - Number of electrons: 1 million
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How far do the electrons move? 🤔]
  ]

  #only("1")[
    #voiceover("Excellent work on solving this problem! Let's go through the solution step-by-step. We're dealing with electrons moving in an electric field. We're given that the electric field strength is 5 volts per meter, the work done is 4 times 10 to the negative 4 joules, and we're considering the motion of one million electrons.")
  ]

  #only("2")[
    #voiceover("Our task is to determine how far these electrons move under these conditions. Let's break this down into manageable steps.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Work-Energy Theorem]
  #v(40pt)

  #only("1-")[
    Work done = Force × Distance
  ]

  #only("2-")[
    $W = F × d$
  ]

  #only("3-")[
    $4 × 10^(-4) = F × d$
  ]

  #only("1")[
    #voiceover("Let's start with the work-energy theorem. We know that work done is equal to the force applied multiplied by the distance moved.")
  ]

  #only("2")[
    #voiceover("We can express this mathematically as W equals F times d, where W is work, F is force, and d is distance.")
  ]

  #only("3")[
    #voiceover("Plugging in our known value for work, we get 4 times 10 to the negative 4 equals F times d.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Force on Electrons]
  #v(40pt)

  #only("1-")[
    Force = Charge × Electric Field
  ]

  #only("2-")[
    $F = q × E$
  ]

  #only("3-")[
    $F = (1,000,000 × e) × 5$
  ]

  #only("4-")[
    $F = 5,000,000e$ N
  ]

  #only("1")[
    #voiceover("Next, we need to determine the force on the electrons. In an electric field, the force on a charged particle is equal to its charge multiplied by the electric field strength.")
  ]

  #only("2")[
    #voiceover("We can write this as F equals q times E, where q is the total charge and E is the electric field strength.")
  ]

  #only("3")[
    #voiceover("We have one million electrons, each with charge e, and the electric field is 5 volts per meter. So our force equation becomes F equals one million times e, all multiplied by 5.")
  ]

  #only("4")[
    #voiceover("Simplifying, we get F equals 5 million e newtons, where e is the elementary charge.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Solving for Distance]
  #v(40pt)

  #only("1-")[
    $4 × 10^(-4) = (5,000,000e) × d$
  ]

  #only("2-")[
    $d = (4 × 10^(-4)) / (5,000,000e)$
  ]

  #only("3-")[
    $d ≈ 0.5$ m
  ]

  #only("1")[
    #voiceover("Now we can substitute our force into our work equation. We get 4 times 10 to the negative 4 equals 5 million e times d.")
  ]

  #only("2")[
    #voiceover("Solving for d, we get d equals 4 times 10 to the negative 4 divided by 5 million e.")
  ]

  #only("3")[
    #voiceover("When we calculate this, remembering that e is approximately 1.6 times 10 to the negative 19 coulombs, we find that d is approximately 0.5 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)

  #only("1-")[
    The electrons move approximately 0.5 meters! 📏
  ]

  #only("2-")[
    Key points:
    - Used work-energy theorem
    - Calculated force on electrons
    - Solved for distance
  ]

  #only("1")[
    #voiceover("So, our final answer is that the million electrons move approximately 0.5 meters under these conditions!")
  ]

  #only("2")[
    #voiceover("To recap, we used the work-energy theorem, calculated the force on the electrons using the electric field strength, and then solved for the distance. This problem demonstrates how we can use fundamental physics principles to solve real-world problems involving electric fields and charged particles.")
  ]
]