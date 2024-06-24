#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Fields in Conductors]
  #v(40pt)
  #only("1-")[- Conductors contain free electrons ⚡]
  #v(20pt)
  #only("2-")[- Applied electric field causes electron movement 🔀]
  #v(20pt)
  #only("3-")[- Result: Electric current 🔌]

  #only("1")[
    #voiceover("Welcome to our exploration of electric fields in conductors. Imagine you're holding a copper wire. What makes it special? It's a conductor, and that means it contains free electrons.")
  ]
  #only("2")[
    #voiceover("Now, what happens when we apply an electric field to this conductor? The free electrons aren't just going to sit still. They're going to move!")
  ]
  #only("3")[
    #voiceover("This movement of electrons is what we call an electric current. But how exactly does this happen? Let's dive deeper into this fascinating process.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[How Electric Fields Cause Current]
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

            # Draw the conductor
            rect = plt.Rectangle((0.1, 0.3), 0.8, 0.4, fill=False, color='gray')
            ax.add_patch(rect)

            # Draw the electric field lines
            for y in np.linspace(0.35, 0.65, 5):
                ax.arrow(0, y, 0.9, 0, head_width=0.02, head_length=0.02, fc='r', ec='r')

            # Draw electrons
            electron_positions = [(0.2, 0.5), (0.4, 0.4), (0.6, 0.6), (0.8, 0.5)]
            for i, (x, y) in enumerate(electron_positions):
                circle = plt.Circle((x, y), 0.03, fc='blue')
                ax.add_patch(circle)
                ax.text(x, y, '-', color='white', ha='center', va='center')

            # Add labels
            ax.text(0.5, 0.8, 'Conductor', ha='center', va='center')
            ax.text(0.5, 0.2, 'Electric Field', ha='center', va='center', color='red')
            ax.text(0.05, 0.5, '-', ha='right', va='center')
            ax.text(0.95, 0.5, '+', ha='left', va='center')

            # Remove axis ticks
            ax.set_xticks([])
            ax.set_yticks([])

            # Set title
            ax.set_title('Electric Field in a Conductor')

            plt.tight_layout()
            plt.show()
          ```,
          width: 360pt
        ),
        caption: [Electric Field in a Conductor]
      )
    ]
  ]]

  #only("2-")[- Electric field exerts force on electrons]
  #v(20pt)
  #only("3-")[- Electrons accelerate in direction opposite to field]
  #v(20pt)
  #only("4-")[- Net movement of charge = Electric current]

  #only("1")[
    #voiceover("Let's visualize what's happening inside our conductor. Here, we see a conductor with free electrons represented by blue circles. The red arrows show the direction of the applied electric field.")
  ]
  #only("2")[
    #voiceover("When we apply an electric field, it exerts a force on these free electrons. Remember, electrons are negatively charged, so they experience a force opposite to the direction of the electric field.")
  ]
  #only("3")[
    #voiceover("As a result, the electrons accelerate in the direction opposite to the electric field. They start moving from the negative end towards the positive end of the conductor.")
  ]
  #only("4")[
    #voiceover("This net movement of charge is what we call an electric current. It's important to note that while individual electrons move, the overall flow of charge is what constitutes the current.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Conductors have free electrons ⚛️]
  #v(20pt)
  #only("2-")[- Applied electric field ➡️ Force on electrons]
  #v(20pt)
  #only("3-")[- Electron movement ➡️ Electric current 🔌]
  #v(20pt)
  #only("4-")[- Understanding this process is key to electrical engineering! 🔧]

  #only("1")[
    #voiceover("Let's recap what we've learned. First, conductors, like metals, have free electrons that can move around.")
  ]
  #only("2")[
    #voiceover("When we apply an electric field to a conductor, it exerts a force on these free electrons.")
  ]
  #only("3")[
    #voiceover("This force causes the electrons to move, creating what we call an electric current.")
  ]
  #only("4")[
    #voiceover("Understanding this process is fundamental to electrical engineering and helps explain how electricity flows in wires and circuits. Next time you turn on a light or charge your phone, remember the fascinating dance of electrons making it all possible!")
  ]
]