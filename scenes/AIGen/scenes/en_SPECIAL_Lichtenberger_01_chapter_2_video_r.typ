#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Buoyancy in Depth Changes 🌊]

#only("1-")[
- Pressure increases with depth 📈
]
#only("2-")[
- Buoyancy remains constant if volume is unchanged 🎈
]

#only("1")[
#voiceover("In this recap, we'll revisit how pressure and buoyancy are affected by depth changes in water.")
]

#only("2")[
#voiceover("As objects descend deeper into water, the pressure they experience increases significantly. This is because the weight of the water above them increases with depth.")
]

#only("3")[
#voiceover("However, if the object's volume does not change as it moves through the water, its buoyancy will remain relatively constant.")
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```

import matplotlib.pyplot as plt
import numpy as np

# Set up the figure and axes
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the water surface
ax.hlines(y=9, xmin=0, xmax=10, linewidth=2, color='blue')

# Draw the object at different depths
depths = [8, 6, 4, 2]
for depth in depths:
    circle = plt.Circle((5, depth), 0.5, color='red', alpha=0.7)
    ax.add_artist(circle)
    ax.annotate(f'Pressure ↑', xy=(6, depth), fontsize=12, color='black')
    ax.annotate(f'Buoyancy =', xy=(2, depth), fontsize=12, color='black')

# Add labels and title
ax.set_xlabel('Horizontal Position', fontsize=14)
ax.set_ylabel('Depth', fontsize=14)
ax.set_title('Pressure and Buoyancy Changes with Depth', fontsize=16)

# Invert the y-axis to show depth increasing downwards
ax.invert_yaxis()

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]

#only("3")[
#voiceover("This is because buoyancy depends on the volume of water displaced by the object, which remains the same if the object's size and shape don't change.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Key Takeaways 🗝️]

#only("1-")[
- Pressure increases linearly with depth 📏
]
#only("2-")[
- Buoyancy is determined by displaced water volume 💧
]
#only("3-")[
- Constant volume ⇒ constant buoyancy 🧊
]

#only("1")[
#voiceover("To sum up, remember that pressure increases linearly with depth in water. The deeper an object goes, the more pressure it experiences.")
]

#only("2")[
#voiceover("Buoyancy, on the other hand, is determined by the volume of water displaced by the object.")
]

#only("3")[
#voiceover("As long as the object's volume remains constant, its buoyancy will also remain constant, regardless of the depth at which it is submerged.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Conclusion 🎓]

#only("1-")[
Understanding pressure and buoyancy changes with depth is crucial for:

- Underwater engineering 🏗️
- Marine biology 🐠
- Aquatic sports and activities 🏊‍♂️
]

#only("1")[
#voiceover("Understanding how pressure and buoyancy change with depth is crucial for various fields, such as underwater engineering, marine biology, and aquatic sports and activities.")
]

#only("2")[
#voiceover("By keeping these principles in mind, we can better understand and predict the behavior of objects and organisms in aquatic environments.")
]

]