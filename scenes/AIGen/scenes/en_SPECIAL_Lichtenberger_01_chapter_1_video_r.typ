#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Recap 🌊]
#v(40pt)
#only("1-")[- Water pressure increases with depth 🏊‍♂️]
#only("1")[#voiceover("Let's recap what we learned about water pressure. First, water pressure increases as you go deeper.")]
#v(20pt)
#only("2-")[- Pressure decreases when water level above an object decreases 📉]
#only("2")[#voiceover("Second, when the water level above an object decreases, the pressure on that object also decreases.")]
#v(20pt)
#only("3-")[- Objects submerged in water are impacted by these pressure changes 🚢]
#only("3")[#voiceover("Finally, objects that are submerged in water are affected by these changes in water pressure.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Create a gradient background to represent water depth
depth = np.linspace(0, 1, 100)
pressure = depth
X, Y = np.meshgrid(np.linspace(0, 1, 100), np.linspace(0, 1, 100))
ax.contourf(X, Y, pressure[:, np.newaxis], cmap='Blues', alpha=0.8)

# Add a boat at the surface
boat_x = 0.5
boat_y = 0.9
boat_width = 0.2
boat_height = 0.1
ax.add_patch(plt.Rectangle((boat_x - boat_width/2, boat_y), boat_width, boat_height, facecolor='brown', edgecolor='black', linewidth=2))

# Add a fish at a certain depth
fish_x = 0.7
fish_y = 0.4
fish_size = 0.08
ax.add_patch(plt.Circle((fish_x, fish_y), fish_size, facecolor='orange', edgecolor='black', linewidth=2))

# Add arrows to represent pressure
arrow_x = 0.2
arrow_y = np.linspace(0.1, 0.8, 4)
for y in arrow_y:
    ax.arrow(arrow_x, y, 0.05, 0, head_width=0.03, head_length=0.03, fc='red', ec='red', linewidth=2)

# Add labels
ax.text(boat_x, boat_y + boat_height + 0.02, 'Boat', ha='center', va='bottom', fontsize=14)
ax.text(fish_x + fish_size + 0.02, fish_y, 'Fish', ha='left', va='center', fontsize=14)
ax.text(arrow_x - 0.02, arrow_y[-1], 'Pressure', ha='right', va='center', fontsize=14, color='red', rotation=90)

# Set up the axes
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a visual representation. The blue gradient represents water depth, with darker blue indicating greater depth and pressure. The red arrows show the increasing pressure as we go deeper.")]
#v(20pt)
#only("2")[#voiceover("The boat at the surface experiences less pressure compared to the fish deeper down.")]
#v(20pt)
#only("3")[#voiceover("If the water level were to decrease, the pressure on the fish would also decrease.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Depth and water pressure are directly related 🤿]
#only("1")[#voiceover("The key takeaways are: depth and water pressure have a direct relationship - as depth increases, so does pressure.")]
#v(20pt)
#only("2-")[- Water level changes affect pressure on submerged objects 🌊]
#only("2")[#voiceover("Changes in the water level will affect the pressure experienced by submerged objects.")]
#v(20pt)
#only("3-")[- Understanding this is crucial for marine activities and designs 🛳️]
#only("3")[#voiceover("Understanding these principles is crucial for any marine activities or designs.")]
]