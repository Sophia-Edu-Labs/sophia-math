#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Fields in Conductors]
  #v(40pt)

  #only("1-")[What happens when an electric field is applied to a conductor?]
  #v(20pt)

  #only("2-")[a) Electrons stop moving]
  #v(10pt)
  #only("3-")[b) Free electrons move in the field direction]
  #v(10pt)
  #only("4-")[c) Free electrons move opposite to the field direction]
  #v(10pt)
  #only("5-")[d) The conductor becomes an insulator]

  #only("1")[
    #voiceover("Let's explore an important concept in electromagnetism. What happens when an electric field is applied to a conductor?")
  ]

  #only("2")[
    #voiceover("Is it that electrons stop moving?")
  ]

  #only("3")[
    #voiceover("Or do free electrons move in the direction of the field?")
  ]

  #only("4")[
    #voiceover("Perhaps free electrons move in the opposite direction to the field?")
  ]

  #only("5")[
    #voiceover("Or does the conductor transform into an insulator?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conductors and Electric Fields]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Draw the conductor (rectangle)
conductor = plt.Rectangle((0.2, 0.3), 0.6, 0.4, fc='lightgray', ec='black')
ax.add_patch(conductor)

# Draw electric field lines
x = np.linspace(0, 1, 20)
y = np.linspace(0, 1, 10)
X, Y = np.meshgrid(x, y)

U = np.ones_like(X)
V = np.zeros_like(Y)

ax.quiver(X, Y, U, V, scale=20, width=0.002, color='blue', alpha=0.7)

# Add labels and title
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect('equal')
ax.set_xticks([])
ax.set_yticks([])
ax.set_title('Electric Field Applied to a Conductor')

# Add legend
ax.text(0.5, 0.9, 'Electric Field', color='blue', ha='center', fontsize=12)
ax.text(0.5, 0.2, 'Conductor', ha='center', fontsize=12)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]

  #only("2-")[
    - Conductors contain free electrons 🔬
  ]

  #only("3-")[
    - Electric field exerts force on charges ⚡
  ]

  #only("4-")[
    - Electrons are negatively charged ➖
  ]

  #only("1")[
    #voiceover("Let's visualize this scenario. Here we have a conductor represented by the gray rectangle, and the blue arrows show the direction of the applied electric field.")
  ]

  #only("2")[
    #voiceover("First, it's important to remember that conductors contain free electrons that can move within the material.")
  ]

  #only("3")[
    #voiceover("When we apply an electric field, it exerts a force on all charged particles.")
  ]

  #only("4")[
    #voiceover("Electrons are negatively charged. How do you think they will respond to this applied field?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What happens when an electric field is applied to a conductor?", 
answerOptions: ("Electrons stop moving", "Free electrons move in the field direction", "Free electrons move opposite to the field direction", "The conductor becomes an insulator"),
correctAnswerIndex: 2 
)