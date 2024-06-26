#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current: Introduction]
  #v(40pt)
  
  #only("1-")[- 💡 Powering our modern world]
  #v(20pt)
  #only("2-")[- 🔌 Flow of electric charge]
  #v(20pt)
  #only("3-")[- ⚡ Measured in Amperes (A)]
  
  #only("1")[
    #voiceover("Electric current is fundamental to our modern world. From the lights in our homes to the devices in our pockets, electric current powers it all.")
  ]
  #only("2")[
    #voiceover("But what exactly is electric current? In simple terms, it's the flow of electric charge through a conductor, like a wire.")
  ]
  #only("3")[
    #voiceover("We measure electric current in a unit called Amperes, often abbreviated as 'A'. But how do we calculate this current? Let's find out!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formula for Electric Current]
  #v(40pt)
  
  #only("1-")[$ I = Q/t $]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $I$: Current (Amperes, A)]
  #only("4-")[- $Q$: Charge (Coulombs, C)]
  #only("5-")[- $t$: Time (Seconds, s)]
  
  #only("1")[
    #voiceover("The formula for electric current is I equals Q divided by t.")
  ]
  #only("2")[
    #voiceover("Let's break down what each of these symbols means.")
  ]
  #only("3")[
    #voiceover("I represents the current, measured in Amperes.")
  ]
  #only("4")[
    #voiceover("Q stands for the amount of electric charge that flows, measured in Coulombs.")
  ]
  #only("5")[
    #voiceover("And t is the time over which this charge flows, measured in seconds.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding the Formula]
  #v(40pt)
  
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

      import matplotlib.pyplot as plt
      import numpy as np

      t = np.linspace(0, 10, 100)
      Q = 5 * t  # Assuming a constant current of 5 A

      plt.figure(figsize=(8, 6))
      plt.plot(t, Q, 'b-', linewidth=2)
      plt.fill_between(t, Q, alpha=0.2)
      plt.xlabel('Time (s)', fontsize=12)
      plt.ylabel('Charge (C)', fontsize=12)
      plt.title('Charge vs Time for Constant Current', fontsize=14)
      plt.grid(True)
      plt.annotate('Slope = Current', xy=(5, 25), xytext=(6, 15),
                    arrowprops=dict(facecolor='black', shrink=0.05))
      plt.show()
          ```,
          width: 360pt
          )
        )
      ]
    ]
  ]
  
  #only("2-")[- Slope of the line = Current]
  #v(20pt)
  #only("3-")[- Steeper slope = Higher current]
  
  #only("1")[
    #voiceover("Let's visualize this formula. In this graph, we're plotting the charge Q against time t. The slope of this line represents the current I.")
  ]
  #only("2")[
    #voiceover("The steepness of this line tells us about the current. A steeper line means more charge is flowing per unit time, which means a higher current.")
  ]
  #only("3")[
    #voiceover("If we were to increase the current, the line would become steeper. If we decreased it, the line would be less steep.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Electric Current]
  #v(40pt)
  
  #only("1-")[- Formula: $ I = Q/t $]
  #v(20pt)
  #only("2-")[- $I$: Current (A) 🔌]
  #v(20pt)
  #only("3-")[- $Q$: Charge (C) ⚡]
  #v(20pt)
  #only("4-")[- $t$: Time (s) ⏱]
  
  #only("1")[
    #voiceover("Let's recap what we've learned. The formula for electric current is I equals Q divided by t.")
  ]
  #only("2")[
    #voiceover("I represents the current, measured in Amperes.")
  ]
  #only("3")[
    #voiceover("Q is the amount of charge that flows, measured in Coulombs.")
  ]
  #only("4")[
    #voiceover("And t is the time over which this charge flows, measured in seconds. Understanding this formula is key to calculating and working with electric currents in circuits and electrical systems.")
  ]
]