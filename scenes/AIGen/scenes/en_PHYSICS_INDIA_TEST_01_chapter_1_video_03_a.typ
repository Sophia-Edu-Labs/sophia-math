#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Electric Current]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
              ```
              import matplotlib.pyplot as plt
              import numpy as np

              # Create data
              t = np.linspace(0, 5, 100)
              Q = 30 * (1 - np.exp(-t))

              # Create the plot
              fig, ax = plt.subplots(figsize=(10, 6))
              ax.plot(t, Q, 'b-', linewidth=2)

              # Add labels and title
              ax.set_xlabel('Time (s)', fontsize=12)
              ax.set_ylabel('Charge (C)', fontsize=12)
              ax.set_title('Charge vs Time', fontsize=14)

              # Add grid
              ax.grid(True, linestyle='--', alpha=0.7)

              # Highlight the point (5, 30)
              ax.plot(5, 30, 'ro', markersize=10)
              ax.annotate('(5s, 30C)', xy=(5, 30), xytext=(3.5, 20),
                          arrowprops=dict(facecolor='black', shrink=0.05))

              plt.tight_layout()
              plt.show()
              ```,
              width: 360pt
            ),
            caption: []
          )
        ]
      ]
    ]
  ]

  #only("2-")[
    - Given: 30 coulombs in 5 seconds
  ]

  #only("3-")[
    - Formula: $I = Q / t$
  ]

  #only("4-")[
    - Calculation: $I = 30 "C" / 5 "s" = 6 "A"$
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step by step. We're dealing with electric current, which is the flow of electric charge over time.")
  ]

  #only("2")[
    #voiceover("In this problem, we're given that a charge of 30 coulombs passes through a point in a circuit in 5 seconds. The graph shows how the charge accumulates over time, reaching 30 coulombs at 5 seconds.")
  ]

  #only("3")[
    #voiceover("To find the current, we use the formula I equals Q divided by t, where I is the current in amperes, Q is the charge in coulombs, and t is the time in seconds.")
  ]

  #only("4")[
    #voiceover("Now, let's plug in our values. We have 30 coulombs divided by 5 seconds. This gives us 6 amperes. So, the current in the circuit is 6 amperes.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding the Result]
  #v(40pt)

  #only("1-")[
    - Current (I) = 6 amperes
  ]

  #only("2-")[
    - Meaning: 6 coulombs per second
  ]

  #only("3-")[
    - Analogy: Water flow 💧
  ]

  #only("4-")[
    - Constant vs. varying current
  ]

  #only("1")[
    #voiceover("Let's understand what our result of 6 amperes means.")
  ]

  #only("2")[
    #voiceover("An ampere is defined as one coulomb per second. So, 6 amperes means that 6 coulombs of charge are flowing through the circuit every second.")
  ]

  #only("3")[
    #voiceover("We can think of this like water flowing through a pipe. The amount of water (charge) that flows past a point in the pipe (wire) each second is the current.")
  ]

  #only("4")[
    #voiceover("In this case, we calculated the average current over 5 seconds. In some circuits, the current might be constant like this, while in others it could vary over time.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Practical Applications]
  #v(40pt)

  #only("1-")[
    - Household appliances ⚡
  ]

  #only("2-")[
    - Safety considerations 🛡️
  ]

  #only("3-")[
    - Energy consumption 💡
  ]

  #only("4-")[
    #text(size: 24pt, weight: "bold")[Remember: $I = Q / t$ is a fundamental relationship in electricity! 🔌]
  ]

  #only("1")[
    #voiceover("Understanding current is crucial in many practical applications. For instance, household appliances are rated for certain currents.")
  ]

  #only("2")[
    #voiceover("It's also important for safety. Too high a current can be dangerous, which is why we have fuses and circuit breakers in our homes.")
  ]

  #only("3")[
    #voiceover("Current is also directly related to energy consumption. The higher the current, the more energy an appliance uses.")
  ]

  #only("4")[
    #voiceover("Remember, the relationship between current, charge, and time, I equals Q divided by t, is fundamental in electricity. It helps us understand and calculate many electrical phenomena.")
  ]
]