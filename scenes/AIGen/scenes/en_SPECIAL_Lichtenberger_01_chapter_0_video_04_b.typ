#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Scenario]
#v(40pt)
#only("2-")[- Wooden board floats in water 🌊]
#only("3-")[- Stone on the board 🪨]
#only("4-")[- Stone slips off and sinks ⬇]

#only("2")[
#voiceover("We have a wooden board floating in a container filled with water.")
]
#only("3")[
#voiceover("There's a stone on the board.")
]
#only("4")[
#voiceover("The stone slips off the board and sinks to the bottom of the container.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Principles]
#v(40pt)
#only("1-")[- Buoyant force equals weight of displaced water 🎈=💧]
#only("2-")[- Board displaces water equal to its weight 🌊=🪵]
#only("3-")[- Stone's weight supported by board, not water 🪨➡🪵]

#only("1")[
#voiceover("The buoyant force acting on an object equals the weight of the water it displaces.")
]
#only("2")[
#voiceover("The floating board displaces a volume of water equal to its own weight.")
]
#only("3")[
#voiceover("When the stone is on the board, its weight is supported by the board, not the water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[What Happens]
#v(40pt)
#only("1-")[- Stone sinks, no longer displacing water via board 🪨⬇]
#only("2-")[- Board rises, displacing less water 🪵⬆]
#only("3-")[- Water level remains the same or drops slightly 🌊➡]

#only("1")[
#voiceover("When the stone sinks, it's no longer displacing water via the board.")
]
#only("2")[
#voiceover("The board rises up, now displacing a volume of water equal to just its own weight.")
]
#only("3")[
#voiceover("As a result, the water level remains the same or drops slightly, depending on the relative densities of the stone and water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Scenario 1: Stone on the board
ax1.fill_between([0, 10], [2, 2], color='blue', alpha=0.5)
ax1.fill_between([3, 7], [2, 2], [2.5, 2.5], color='brown')
ax1.scatter(5, 2.6, s=100, color='gray', marker='o')
ax1.set_title('Stone on the Board')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 5)
ax1.set_aspect('equal')

# Scenario 2: Stone sunk
ax2.fill_between([0, 10], [2, 2], color='blue', alpha=0.5)
ax2.fill_between([4, 6], [2, 2], [2.3, 2.3], color='brown')
ax2.scatter(5, 0.5, s=100, color='gray', marker='o')
ax2.set_title('Stone Sunk')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 5)
ax2.set_aspect('equal')

plt.tight_layout()
plt.show()
```, width: 360pt))
]
]

#only("1")[
#voiceover("Here's a visualization of what happens. On the left, we see the stone on the board, displacing water. On the right, after the stone sinks, the board rises up, displacing less water, and the water level remains about the same.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Stone's weight transferred from board to water 🪨➡🌊]
#only("2-")[- Board displaces less water, rises 🪵⬆]
#only("3-")[- Water level remains constant or drops slightly 🌊➡]

#only("1")[
#voiceover("In conclusion, when the stone sinks, its weight is transferred from the board to the water.")
]
#only("2")[
#voiceover("The board, now displacing less water, rises.")
]
#only("3")[
#voiceover("The water level remains constant or drops slightly, depending on the stone's density relative to water.")
]
]