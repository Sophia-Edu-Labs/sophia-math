#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Great job! That's absolutely correct. Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Problem]

#v(40pt)

#only("2-")[A wooden board floats in a container filled with water. A stone is on the board. The stone slips off the board and sinks to the bottom of the container. What happens to the water level?]
// The problem statement is shown from slide 2 onward

#only("2")[
#voiceover("We have a wooden board floating in a container filled with water, and a stone is on the board. The stone then slips off the board and sinks to the bottom of the container. We need to determine what happens to the water level.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Principle of buoyancy 🌊]
// The approach of using the principle of buoyancy is shown from slide 1 onward

#only("2-")[- Archimedes' principle 🧮]
// The approach of using Archimedes' principle is shown from slide 2 onward

#only("1")[
#voiceover("To solve this, we'll use the principle of buoyancy and Archimedes' principle.")
]

#only("2")[
#voiceover("Archimedes' principle states that the upward buoyant force exerted on a body immersed in a fluid is equal to the weight of the fluid that the body displaces.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[- Initially, the stone's weight is supported by the board 🪨]
// The initial situation is described from slide 1 onward

#v(10pt)

#only("2-")[- The board displaces water equal to the combined weight of the board and the stone 🌊]
// The displacement by the board is described from slide 2 onward

#v(10pt)

#only("3-")[- When the stone sinks, it displaces water equal to its own volume 🧊]
// The displacement by the stone is described from slide 3 onward

#v(10pt)

#only("4-")[- The board now displaces less water, equal to its own weight 📏]
// The new displacement by the board is described from slide 4 onward

#v(10pt)

#only("5-")[Therefore, the water level remains the same or drops slightly 📏]
// The conclusion is shown from slide 5 onward

#only("1")[#voiceover("Initially, when the stone is on the board, the stone's weight is supported by the board.")]

#only("2")[#voiceover("The board displaces a volume of water equal to the combined weight of the board and the stone.")]

#only("3")[#voiceover("When the stone slips off and sinks, it displaces a volume of water equal to its own volume.")]

#only("4")[#voiceover("Now, the board is supporting only its own weight, so it displaces less water, equal to its own weight.")]

#only("5")[#voiceover("The water displaced by the stone compensates for the reduction in water displaced by the board. Therefore, the water level remains the same or drops slightly, depending on the exact densities of the stone and the board.")]

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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

# First plot
x = np.linspace(0, 10, 100)
y = 4 * np.ones_like(x)
ax1.fill_between(x, y, color='blue', alpha=0.5)
ax1.plot([2, 8], [4.5, 4.5], color='brown', linewidth=10)
ax1.scatter(5, 4.6, color='black', s=100)
ax1.set_ylim(0, 6)
ax1.set_title('Stone on the Board')
ax1.set_xlabel('Container Width')
ax1.set_ylabel('Water Level')

# Second plot
ax2.fill_between(x, y, color='blue', alpha=0.5)
ax2.plot([2, 8], [4.2, 4.2], color='brown', linewidth=10)
ax2.scatter(5, 3.8, color='black', s=100)
ax2.set_ylim(0, 6)
ax2.set_title('Stone at the Bottom')
ax2.set_xlabel('Container Width')
ax2.set_ylabel('Water Level')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the situation. In the first image, the stone is on the board, and the water level is higher due to the combined displacement of the board and the stone. In the second image, the stone is at the bottom, displacing its own volume, while the board displaces less water. The water level remains nearly the same.")
]
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Buoyancy depends on the weight of the displaced fluid 🌊]
// The key takeaway about buoyancy is shown from slide 1 onward

#only("2-")[- Objects displace fluid equal to their own volume when fully submerged 🧊]
// The key takeaway about displacement is shown from slide 2 onward

#only("3-")[- Water level depends on the total volume of displaced fluid 📏]
// The key takeaway about water level is shown from slide 3 onward

#only("1")[#voiceover("Remember, buoyancy depends on the weight of the fluid displaced by an object.")]

#only("2")[#voiceover("When an object is fully submerged, it displaces a volume of fluid equal to its own volume.")]

#only("3")[#voiceover("The water level is determined by the total volume of fluid displaced by all objects in the container.")]

]