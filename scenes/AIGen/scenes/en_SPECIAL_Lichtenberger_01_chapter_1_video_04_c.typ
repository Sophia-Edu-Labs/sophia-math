#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Water Level]
#v(40pt)
A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) It remains the same.]#only("2-")[#text(fill:green)[a) It remains the same.]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) It decreases.]#only("3-")[#text(fill:green)[b) It decreases.]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It increases.]#only("4-")[#text(fill:red)[c) It increases.]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Cannot be determined.]#only("5-")[#text(fill:red)[d) Cannot be determined.]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("The pressure decreases as the boat passes over the fish. This is because pressure in a fluid is determined by the height of the fluid column above the point of interest.")]
#only("3")[#voiceover("As the boat passes over, it displaces some of the water, effectively reducing the height of the water column above the fish. This reduction in the height of the water column leads to a decrease in pressure at the fish's depth.")]
#only("4-5")[#voiceover("The other options are incorrect. The pressure neither remains the same nor increases, and it can be determined based on the information provided.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- Pressure in a fluid depends on the height of the fluid column above 📏]
#v(20pt)
#only("2-")[- Boat displaces water as it passes, reducing the water level momentarily 🚤]
#v(20pt)
#only("3-")[- Reduced water level = reduced height of water column above fish 🐟]
#v(20pt)
#only("4-")[- Therefore, pressure at fish's depth decreases temporarily 👇]

#only("1")[#voiceover("Pressure in a fluid is determined by the height of the fluid column above the point of interest. The greater the height of the fluid, the greater the pressure.")]
#only("2")[#voiceover("When a boat passes over the fish, it displaces some of the water, causing the water level to decrease momentarily.")]
#only("3")[#voiceover("This reduction in water level means that the height of the water column above the fish has decreased.")]
#only("4")[#voiceover("As a result, the pressure at the fish's depth also decreases temporarily, as there is less water above the fish exerting downward pressure.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Normal water level
x = np.linspace(0, 10, 100)
y1 = np.ones_like(x) * 5
ax1.plot(x, y1, 'b', linewidth=2, label='Water Level')
ax1.scatter(5, 1, s=200, c='r', marker='o', label='Fish')
ax1.set_ylim(0, 6)
ax1.set_title('Normal Water Level')
ax1.set_xlabel('Position')
ax1.set_ylabel('Depth')
ax1.legend()

# Decreased water level due to boat
y2 = np.ones_like(x) * 5
y2[40:60] = 4  # Decrease water level where boat passes
ax2.plot(x, y2, 'b', linewidth=2, label='Water Level')
ax2.scatter(5, 1, s=200, c='r', marker='o', label='Fish')
ax2.set_ylim(0, 6)
ax2.set_title('Decreased Water Level (Boat Passing)')
ax2.set_xlabel('Position')
ax2.set_ylabel('Depth')
ax2.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visualization to help understand the concept. The left graph shows the normal water level with the fish at a certain depth.")]
#only("2")[#voiceover("The right graph shows what happens when a boat passes over the fish. Notice how the water level decreases temporarily right above the fish.")]
#only("3")[#voiceover("This decrease in water level corresponds to a decrease in the height of the water column above the fish.")]
#only("4")[#voiceover("And as we learned, a decrease in the height of the water column results in a decrease in pressure at that depth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- Pressure in fluids depends on the height of the fluid column 💧
- Boat passing reduces water level momentarily 🚤👇
- Reduced water level = reduced pressure at fish's depth 🐟👇
#v(40pt)
#text(weight: "bold")[Key Takeaway: Pressure decreases as water level decreases 🔑]

#only("1")[#voiceover("To summarize, pressure in fluids is determined by the height of the fluid column above the point of interest.")]
#only("2")[#voiceover("When a boat passes over a fish, it reduces the water level momentarily.")]
#only("3")[#voiceover("This reduction in water level corresponds to a reduction in pressure at the fish's depth.")]
#only("4")[#voiceover("The key takeaway is that pressure decreases as water level decreases. Great work on understanding this concept!")]
]