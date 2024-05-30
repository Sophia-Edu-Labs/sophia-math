#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Problem Statement]

#v(40pt)

#only("2-")[- A wooden board floats in a bucket filled with water 🪵🪣]
#only("3-")[- A cup of water is on the board 🥛]
#only("4-")[- The water from the cup is poured into the bucket 🌊]
#only("5-")[- The empty cup is placed back on the board 🥛]
// The problem statement is gradually built up from slide 2 to 5

#only("2")[#voiceover("We have a wooden board floating in a bucket filled with water.")]
#only("3")[#voiceover("On top of the board, there's a cup of water.")]
#only("4")[#voiceover("The water from the cup is then poured into the bucket.")]
#only("5")[#voiceover("And the empty cup is placed back on the board.")]

#v(40pt)

#only("6-")[#text(size: 30pt, weight: "bold")[Question: What happens to the water level? 🤔]]
// The question is shown from slide 6 onward

#only("6")[#voiceover("The question is: What happens to the water level in the bucket after this process?")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[- Initially, the wooden board and the cup of water displace a certain volume of water in the bucket, according to Archimedes' principle 🎚️]
// The initial state is explained from slide 1 onward

#only("2-")[- When the water from the cup is poured into the bucket, it adds the same volume of water that was previously displaced by the cup 💧]
// The effect of pouring the water is explained from slide 2 onward

#only("3-")[- When the empty cup is placed back on the board, it displaces the same volume of water as before, since its weight hasn't changed 🥛]
// The effect of placing the empty cup back is explained from slide 3 onward

#only("4-")[- Therefore, the water level in the bucket remains the same as it was initially 🎚️]
// The conclusion is shown from slide 4 onward

#only("1")[#voiceover("Initially, the wooden board and the cup of water displace a certain volume of water in the bucket. This is according to Archimedes' principle, which states that a floating object displaces its own weight in the fluid.")]

#only("2")[#voiceover("When the water from the cup is poured into the bucket, it adds the same volume of water that was previously displaced by the cup.")]

#only("3")[#voiceover("When the empty cup is placed back on the board, it displaces the same volume of water as before, since its weight hasn't changed.")]

#only("4")[#voiceover("Therefore, the water level in the bucket remains the same as it was initially. The water added from the cup exactly compensates for the volume no longer displaced by the cup.")]

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

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the bucket
bucket = plt.Rectangle((0, 0), 10, 8, linewidth=2, edgecolor='black', facecolor='skyblue')
ax.add_patch(bucket)

# Draw the wooden board
board = plt.Rectangle((2, 6), 6, 1, linewidth=2, edgecolor='black', facecolor='burlywood')
ax.add_patch(board)

# Draw the cup
cup = plt.Rectangle((4, 7), 2, 1.5, linewidth=2, edgecolor='black', facecolor='white')
ax.add_patch(cup)

# Draw the water level
water_level = 6
ax.plot([0, 10], [water_level, water_level], color='blue', linewidth=2)

# Add labels
ax.text(5, 3, 'Bucket', fontsize=14, ha='center')
ax.text(5, 6.5, 'Wooden Board', fontsize=14, ha='center')
ax.text(5, 7.75, 'Cup', fontsize=14, ha='center')
ax.text(1, water_level, 'Water Level', fontsize=14, va='center')

# Set the limits and remove the ticks
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// The initial state is visualized using matplotlib

#only("1")[#voiceover("Here's a visualization of the initial state. We have a bucket filled with water, a wooden board floating on the water, and a cup of water on the board. The blue line represents the water level.")]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Archimedes' principle: A floating object displaces its own weight in the fluid 🎚️]

#only("2-")[- Pouring the water from the cup into the bucket adds the same volume previously displaced by the cup 💧]

#only("3-")[- Placing the empty cup back on the board displaces the same volume as before 🥛]

#only("4-")[- The water level remains the same as it was initially 🎚️]

#only("1")[#voiceover("To summarize, according to Archimedes' principle, a floating object displaces its own weight in the fluid.")]

#only("2")[#voiceover("Pouring the water from the cup into the bucket adds the same volume of water that was previously displaced by the cup.")]

#only("3")[#voiceover("Placing the empty cup back on the board displaces the same volume of water as before, since its weight hasn't changed.")]

#only("4")[#voiceover("As a result, the water level in the bucket remains the same as it was initially. The added water and the displaced water balance each other out.")]
]