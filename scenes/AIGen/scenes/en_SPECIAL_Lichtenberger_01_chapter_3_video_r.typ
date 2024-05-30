#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about buoyancy and its relationship to an object's density and volume.")
]
#text(size: 30pt, weight: "bold")[Buoyancy Recap 🌊]
// The title "Buoyancy Recap" with a water wave emoji is shown on this slide
#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw water level
water_level = 0.7
ax.axhline(water_level, color='blue', linewidth=2, label='Water Level')

# Draw objects with different densities and volumes
objects = [
    {'density': 0.5, 'volume': 0.2, 'label': 'Low Density, Small Volume'},
    {'density': 0.5, 'volume': 0.6, 'label': 'Low Density, Large Volume'},
    {'density': 1.2, 'volume': 0.2, 'label': 'High Density, Small Volume'},
    {'density': 1.2, 'volume': 0.6, 'label': 'High Density, Large Volume'}
]

for i, obj in enumerate(objects):
    y = water_level - obj['volume'] if obj['density'] < 1 else 0
    ax.bar(i, obj['volume'], bottom=y, width=0.8, align='center', 
           color='gray' if obj['density'] < 1 else 'brown', 
           edgecolor='black', linewidth=1, alpha=0.7)
    
    if obj['density'] < 1:
        ax.annotate('Floats' if obj['volume'] > 0.4 else 'Sinks', 
                    xy=(i, y + obj['volume'] / 2), xytext=(i + 0.1, y + obj['volume'] / 2), 
                    fontsize=12, color='green' if obj['volume'] > 0.4 else 'red')

ax.set_xticks(range(len(objects)))
ax.set_xticklabels([obj['label'] for obj in objects], rotation=45, ha='right', fontsize=12)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.legend(fontsize=12, loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows objects with different densities and volumes in water. Low-density objects float if they have a large volume and sink if they have a small volume. High-density objects always sink. The water level is marked with a blue line. This figure is shown from slide 2 onward.

#only("2")[
#voiceover("An object's buoyancy in water is influenced by both its density and volume. Let's look at some examples.")
]

#v(20pt)

#only("3-")[- Objects with the same density but different volumes behave differently 🧱🪵]
// The bullet point about objects with the same density but different volumes is shown from slide 3 onward, with brick and wood emojis

#only("3")[
#voiceover("Objects with the same density but different volumes exhibit different buoyancy behaviors. A larger volume object will float, while a smaller volume object of the same density may sink.")
]

#only("4-")[- Low-density, large-volume objects float 🛟]
// The bullet point about low-density, large-volume objects floating is shown from slide 4 onward, with a life raft emoji

#only("4")[
#voiceover("Low-density objects with a large volume, such as a life raft, will float on water.")
]

#only("5-")[- Low-density, small-volume objects may sink 🪨]
// The bullet point about low-density, small-volume objects sinking is shown from slide 5 onward, with a rock emoji

#only("5")[
#voiceover("However, low-density objects with a small volume, like a small rock, may still sink.")
]

#only("6-")[- High-density objects always sink, regardless of volume ⚓]
// The bullet point about high-density objects always sinking is shown from slide 6 onward, with an anchor emoji

#only("6")[
#voiceover("High-density objects, such as an anchor, will always sink, regardless of their volume.")
]

#only("7")[
#voiceover("In summary, an object's buoyancy depends on the interplay between its density and volume. Understanding these factors helps predict whether an object will float or sink in water.")
]

]