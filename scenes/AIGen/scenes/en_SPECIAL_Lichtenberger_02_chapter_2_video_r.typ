#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Recap 🌊]
#v(40pt)
#only("1-")[- Buoyancy depends on:
  - Volume of object submerged 📏
  - Density of fluid 🧊]
#only("1")[
#voiceover("Let's recap what we learned about buoyancy. Buoyancy depends on two main factors: the volume of the object that is submerged and the density of the fluid the object is in.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Icebergs 🧊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Draw the water line
water_line = 0.1
ax.axhline(water_line, color='blue', linewidth=2, linestyle='-')

# Draw the iceberg
iceberg_height = 1
iceberg_width = 1
iceberg = plt.Rectangle((0, water_line), iceberg_width, iceberg_height-water_line, facecolor='white', edgecolor='black', linewidth=2)
ax.add_patch(iceberg)

# Annotate the water line
ax.annotate('Water Line', xy=(0.5, water_line), xytext=(0.5, 0.3), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Annotate the above water portion
ax.annotate('10.1%', xy=(0.5, (water_line+1)/2), xytext=(1.1, 0.6), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Annotate the below water portion
ax.annotate('89.9%', xy=(0.5, water_line/2), xytext=(1.1, 0.1), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Set axis limits and remove ticks
ax.set_xlim(-0.1, 2)
ax.set_ylim(-0.1, 1.1)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This affects how much of an object, like an iceberg, remains underwater. In the case of icebergs, about 89.9% of the iceberg is submerged, while only 10.1% is above the water line.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Buoyancy is determined by:
  - Volume submerged 📏
  - Fluid density 🧊
- Affects how much of an object is underwater 🌊]
#only("1")[
#voiceover("So remember, buoyancy is determined by the volume of the object that is submerged and the density of the fluid it's in. This affects how much of an object, like an iceberg, remains underwater.")
]
]