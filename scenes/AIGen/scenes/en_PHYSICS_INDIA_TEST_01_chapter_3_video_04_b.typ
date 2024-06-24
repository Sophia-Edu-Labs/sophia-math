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
    - Given:
      - Electric field: 50 V/m
      - Work done: 1.6 × 10^(-18) J
  ]

  #only("2-")[
    - Goal: Find distance traveled by electron
  ]

  #only("3-")[
    - Key equation: $W = F × d$
  ]

  #only("1")[
    #voiceover("Not quite, but no worries! Let's walk through the correct solution step-by-step. We're given an electric field of 50 volts per meter and the work done on an electron, which is 1.6 times 10 to the negative 18 joules.")
  ]

  #only("2")[
    #voiceover("Our goal is to find out how far the electron moves under these conditions.")
  ]

  #only("3")[
    #voiceover("The key to solving this problem is the relationship between work, force, and distance. We know that work equals force times distance.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Force]
  #v(40pt)

  #only("1-")[
    - Electric force: $F = q E$
  ]

  #only("2-")[
    - Electron charge: $q = 1.6 × 10^(-19)$ C
  ]

  #only("3-")[
    - Calculation:
      $F = (1.6 × 10^(-19) C) × (50 V/m)$
      $F = 8 × 10^(-18)$ N
  ]

  #only("1")[
    #voiceover("First, let's calculate the force on the electron. In an electric field, the force on a charged particle is given by the product of its charge and the electric field strength.")
  ]

  #only("2")[
    #voiceover("We know the electron's charge is 1.6 times 10 to the negative 19 coulombs.")
  ]

  #only("3")[
    #voiceover("Multiplying this by the electric field strength of 50 volts per meter, we get a force of 8 times 10 to the negative 18 newtons.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Distance]
  #v(40pt)

  #only("1-")[
    - Rearrange $W = F × d$ to solve for $d$
  ]

  #only("2-")[
    - $d = W / F$
  ]

  #only("3-")[
    - Calculation:
      $d = (1.6 × 10^(-18) J) / (8 × 10^(-18) N)$
      $d = 0.2$ m
  ]

  #only("1")[
    #voiceover("Now that we have the force, let's use the work-force-distance relationship to find the distance.")
  ]

  #only("2")[
    #voiceover("We can rearrange the equation Work equals Force times Distance to solve for distance. Distance equals Work divided by Force.")
  ]

  #only("3")[
    #voiceover("Plugging in our values, we get 1.6 times 10 to the negative 18 joules divided by 8 times 10 to the negative 18 newtons. This gives us a distance of 0.2 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    - The electron moves 0.2 meters (20 cm)
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Set up the figure and axis
fig, ax = plt.subplots(figsize=(8, 4))

# Create arrow for electric field
ax.arrow(0, 0.5, 1, 0, head_width=0.05, head_length=0.1, fc='r', ec='r', width=0.02)
ax.text(0.5, 0.6, 'Electric Field', ha='center', va='bottom')

# Create dot and arrow for electron
ax.plot(0, 0.5, 'bo', markersize=10)
ax.arrow(0, 0.5, 0.2, 0, head_width=0.05, head_length=0.05, fc='b', ec='b', width=0.01)
ax.text(0, 0.4, 'Electron', ha='center', va='top')

# Add distance label
ax.annotate('', xy=(0.2, 0.3), xytext=(0, 0.3),
            arrowprops=dict(arrowstyle='<->', color='g'))
ax.text(0.1, 0.25, '0.2 m', ha='center', va='top', color='g')

# Set limits and remove ticks
ax.set_xlim(-0.1, 1.1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])

# Remove axis lines
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

plt.title('Electron Motion in Electric Field')
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

  #only("1")[
    #voiceover("So, our final answer is that the electron moves a distance of 0.2 meters, or 20 centimeters, under the given conditions.")
  ]

  #only("2")[
    #voiceover("Here's a visual representation of the electron's motion in the electric field. The red arrow represents the electric field, and the blue arrow shows the electron's path. The green line indicates the distance traveled, which is 0.2 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - Work-Force-Distance relationship: $W = F × d$
  ]

  #only("2-")[
    - Electric force: $F = q E$
  ]

  #only("3-")[
    - Importance of units in calculations 🧮
  ]

  #only("4-")[
    - Real-world application of electrostatics 🔌
  ]

  #only("1")[
    #voiceover("Let's recap the key points from this problem. First, we used the work-force-distance relationship, where work equals force times distance.")
  ]

  #only("2")[
    #voiceover("We also applied the formula for electric force, which is charge times electric field strength.")
  ]

  #only("3")[
    #voiceover("This problem highlights the importance of keeping track of units in our calculations.")
  ]

  #only("4")[
    #voiceover("Finally, it shows a practical application of electrostatics, demonstrating how we can determine particle motion in electric fields. This concept is crucial in many areas of physics and engineering.")
  ]
]