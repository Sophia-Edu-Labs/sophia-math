#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ice Cube in Water 🧊💧]
#v(40pt)
#only("1-")[- Ice cube floats in glass of water]
#v(20pt)
#only("2-")[- Ice cube melts]
#v(20pt)
#only("3-")[What happens to the water level? 🤔]
#only("1")[
#voiceover("Unfortunately, that's not correct. Let's go through the explanation step by step to see the correct solution.")
]
#only("2")[
#voiceover("We have an ice cube floating in a glass of water. As the ice cube melts, it turns into water.")
]
#only("3")[
#voiceover("The question is, what happens to the water level in the glass after the ice cube has completely melted?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle 🏛️]
#v(40pt)
#only("1-")[- Buoyant force equals weight of displaced fluid]
#v(20pt)
#only("2-")[- Ice cube displaces its own weight in water]
#only("1")[
#voiceover("To understand this, we need to consider Archimedes' principle. It states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("In our case, the floating ice cube is displacing its own weight in water. This is why it floats - the buoyant force balances the weight of the ice.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Melting Process 🔥]
#v(40pt)
#only("1-")[- Ice turns into water]
#v(20pt)
#only("2-")[- Volume of melted ice = Volume of displaced water]
#only("1")[
#voiceover("As the ice cube melts, it turns into water. The key point is that the volume of water produced by the melting ice is exactly equal to the volume of water that was displaced by the ice cube when it was floating.")
]
#only("2")[
#voiceover("In other words, the melted ice just fills in the space that was previously occupied by the submerged part of the ice cube.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Water Level 📏]
#v(40pt)
#only("1-")[- No change in total volume of water]
#v(20pt)
#only("2-")[- Water level remains the same 🌊]
#only("1")[
#voiceover("Since the melted ice just replaces the water that was displaced by the ice cube, there is no change in the total volume of water in the glass.")
]
#only("2")[
#voiceover("Therefore, the water level remains the same after the ice cube has completely melted. The ice cube, whether solid or melted, contributes the same amount to the volume and thus the level of the water in the glass.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create figure and axes
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

# Plot for before melting
ax1.bar(1, 10, width=1, color='skyblue', edgecolor='black', linewidth=2)
ax1.bar(1, 2, width=0.6, color='white', edgecolor='black', linewidth=2)
ax1.set_ylim(0, 12)
ax1.set_xlim(0, 2)
ax1.set_xticks([])
ax1.set_ylabel('Water Level')
ax1.set_title('Before Melting')

# Plot for after melting
ax2.bar(1, 10, width=1, color='skyblue', edgecolor='black', linewidth=2)
ax2.set_ylim(0, 12)
ax2.set_xlim(0, 2)
ax2.set_xticks([])
ax2.set_title('After Melting')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation. The left image shows the glass of water with the floating ice cube. The right image shows the glass after the ice has melted. As you can see, the water level is the same in both cases.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Archimedes' principle: Buoyant force = Weight of displaced fluid 🏛️]
#v(20pt)
#only("2-")[- Melted ice replaces displaced water 🔁]
#v(20pt)
#only("3-")[- No change in total water volume or level 🌊]
#only("1")[
#voiceover("To summarize, according to Archimedes' principle, a floating object displaces its own weight in fluid.")
]
#only("2")[
#voiceover("When the ice cube melts, the resulting water just replaces the water that was displaced by the floating ice.")
]
#only("3")[
#voiceover("As a result, there is no change in the total volume of water or the water level in the glass. The water level remains constant throughout the melting process.")
]
]