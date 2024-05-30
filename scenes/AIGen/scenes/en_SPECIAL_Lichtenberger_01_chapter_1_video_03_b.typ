#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Water Level]
#v(40pt)
#only("1-")[A boat passes over a fish, causing the water level directly above it to decrease. What happens to the pressure?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It remains the same.]#only("2-")[#text(fill:red)[a) It remains the same.]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It decreases.]#only("3-")[#text(fill:green)[b) It decreases.]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It increases.]#only("4-")[#text(fill:red)[c) It increases.]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Cannot be determined.]#only("5-")[#text(fill:red)[d) Cannot be determined.]]
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Option a) is incorrect. The pressure does not remain the same when the water level decreases.")]
#only("3")[#voiceover("Option b) is correct. As the water level decreases, so does the pressure exerted by the water on the fish.")]
#only("4")[#voiceover("Option c) is incorrect. The pressure does not increase when the water level decreases.")]
#only("5")[#voiceover("Option d) is also incorrect. We can determine what happens to the pressure based on the change in water level.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Water pressure is influenced by depth 🌊]
#v(20pt)
#only("2-")[- Pressure $P$ is proportional to depth $h$: $P = rho g h$]
#v(20pt)
#only("3-")[$rho$ = density of water, $g$ = acceleration due to gravity]
#v(20pt)
#only("4-")[When the boat passes over the fish 🐟, the water level $h$ decreases ⬇]
#v(20pt)
#only("5-")[Therefore, the pressure $P$ on the fish also decreases ⬇]
#only("1")[#voiceover("Let's understand why the pressure decreases.")]
#only("2")[#voiceover("Water pressure is proportional to the depth. The formula is P equals rho g h, where P is pressure, rho is the density of water, g is the acceleration due to gravity, and h is the depth.")]
#only("3")[#voiceover("Rho and g are constants in this scenario.")]
#only("4")[#voiceover("When the boat passes over the fish, it causes the water level h directly above the fish to decrease.")]
#only("5")[#voiceover("Since pressure is proportional to depth, as the depth h decreases, the pressure P on the fish also decreases.")]
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

# Set up the figure
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot 1: Before the boat passes
ax1.set_title('Before the Boat Passes')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.set_xlabel('Distance')
ax1.set_ylabel('Depth')

water_level_1 = 8
fish_depth_1 = 6
ax1.axhline(water_level_1, color='blue', linewidth=2, label='Water Level')
ax1.plot([4, 6], [fish_depth_1, fish_depth_1], 'go', markersize=10, label='Fish')
ax1.annotate(f'Pressure: {water_level_1 - fish_depth_1}', xy=(5, fish_depth_1), xytext=(5, 4), 
             arrowprops=dict(facecolor='black', shrink=0.05))

# Plot 2: After the boat passes
ax2.set_title('After the Boat Passes')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.set_xlabel('Distance')
ax2.set_ylabel('Depth')

water_level_2 = 7
fish_depth_2 = 6
ax2.plot([2, 8], [water_level_2, water_level_2], color='blue', linewidth=2, label='Water Level')
ax2.plot([4, 6], [fish_depth_2, fish_depth_2], 'go', markersize=10, label='Fish')
ax2.annotate(f'Pressure: {water_level_2 - fish_depth_2}', xy=(5, fish_depth_2), xytext=(5, 4), 
             arrowprops=dict(facecolor='black', shrink=0.05))

# Add legend
ax1.legend()
ax2.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization to illustrate the concept. The first plot shows the situation before the boat passes over the fish. The water level is high, resulting in a higher pressure on the fish.")
]
#v(20pt)
#only("2-")[
#voiceover("The second plot shows what happens after the boat passes. The water level directly above the fish has decreased, leading to a decrease in pressure on the fish.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Pressure in a fluid is proportional to depth 📏]
#v(20pt)
#only("2-")[- As depth decreases, pressure decreases ⬇]
#v(20pt)
#only("3-")[- A boat passing over a fish reduces the water depth above the fish 🚤🐟]
#v(20pt)
#only("4-")[- Therefore, the pressure on the fish decreases ⬇]
#only("1")[#voiceover("Let's summarize the key points.")]
#only("2")[#voiceover("Pressure in a fluid, like water, is proportional to the depth. As the depth decreases, the pressure also decreases.")]
#only("3")[#voiceover("When a boat passes over a fish, it reduces the water depth directly above the fish.")]
#only("4")[#voiceover("As a result, the pressure on the fish decreases. Remember, depth and pressure are directly related in fluids.")]
]