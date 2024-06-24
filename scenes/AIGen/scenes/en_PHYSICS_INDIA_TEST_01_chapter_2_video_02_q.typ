#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Characteristics of Conductors]
  #v(40pt)

  #only("1-")[What characterizes a conductor? 🤔]
  #v(40pt)

  #only("2-")[a) No free electrons]
  #v(10pt)
  #only("3-")[b) All electrons are bound]
  #v(10pt)
  #only("4-")[c) Some electrons can move freely]
  #v(10pt)
  #only("5-")[d) Protons can move freely]

  #only("1")[
    #voiceover("In our study of conductors and free electrons, let's consider an important question: What characterizes a conductor?")
  ]

  #only("2")[
    #voiceover("Is it that a conductor has no free electrons?")
  ]

  #only("3")[
    #voiceover("Or perhaps all electrons in a conductor are bound?")
  ]

  #only("4")[
    #voiceover("Could it be that some electrons in a conductor can move freely?")
  ]

  #only("5")[
    #voiceover("Or is it that protons can move freely in a conductor?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Conductors]
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

          # Create a metallic lattice structure
          x = np.linspace(0, 10, 6)
          y = np.linspace(0, 6, 4)
          X, Y = np.meshgrid(x, y)

          # Plot the lattice points
          ax.plot(X, Y, 'o', color='gray', markersize=15, label='Atoms')

          # Add some "free" electrons
          for _ in range(20):
              ax.plot(np.random.uniform(0, 10), np.random.uniform(0, 6), 'o', color='blue', markersize=5, alpha=0.7)

          ax.plot([], [], 'o', color='blue', markersize=5, label='Free electrons')

          # Set the aspect of the plot to equal
          ax.set_aspect('equal')

          # Remove axes
          ax.axis('off')

          # Add a title
          plt.title("Simplified Model of a Conductor", fontsize=16)

          # Add a legend
          plt.legend(loc='upper right')

          plt.tight_layout()
          plt.show()
          ```,
          width: 360pt
        ),
        caption: [Simplified model of a conductor]
      )
    ]
  ]
]

  #only("1")[
    #voiceover("Let's visualize a simplified model of a conductor. In this diagram, we see a lattice of atoms represented by the large gray circles. The small blue dots scattered throughout represent electrons. In a conductor, some of these electrons are free to move within the material. This ability of electrons to move is key to understanding how conductors work.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points to Consider]
  #v(40pt)

  #only("1-")[- Electron behavior in materials 🔬]
  #v(20pt)
  #only("2-")[- Distinction between conductors and insulators ⚡]
  #v(20pt)
  #only("3-")[- Role of free electrons in conduction 🏃‍♂️💨]

  #only("1")[
    #voiceover("As you think about the question, consider the behavior of electrons in different materials.")
  ]

  #only("2")[
    #voiceover("Remember the key distinction between conductors and insulators.")
  ]

  #only("3")[
    #voiceover("And think about the role that free electrons play in the process of conduction.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Thoughts]
  #v(40pt)

  #only("1-")[Think about:
    - What allows electricity to flow? 💡
    - How do electrons behave in metals? 🔋
    - What's unique about conductors? 🔍]

  #only("1")[
    #voiceover("As you consider your answer, think about what allows electricity to flow through a material. How do electrons behave in metals, which are good conductors? What makes conductors unique compared to other materials? Keep these points in mind as you select your answer.")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What characterizes a conductor?", 
answerOptions: ("No free electrons", "All electrons are bound", "Some electrons can move freely", "Protons can move freely"),
correctAnswerIndex: 2 
)